Shader "Custom/Bump"
{
    Properties{
       _texture("Texture", 2D) = "white" {}
       _myBump("Bump Texture", 2D) = "bump" {}
       _mySlider("Bump Amount", Range(0,10)) = 1
       _Smooth("Smooth Amount", Range(0,1)) = 0.5
       _SpecColor("Specular", Color) = (1,1,1,1)
       _ScrollX("Scroll X", Range(-5,5)) = 1
       _ScrollY("Scroll Y", Range(-5,5)) = 1
    }

    SubShader{
        CGPROGRAM
        #pragma surface surf StandardSpecular
        sampler2D _myDiffuse;
        sampler2D _myBump;
        sampler2D _texture;
        half _mySlider;
        float _Smooth;
        float4 _Color;
        float _ScrollX;
        float _ScrollY;
        struct Input {
            float2 uv_myDiffuse;
            float2 uv_myBump;
            float2 uv_texture;
        };
            void surf(Input IN, inout SurfaceOutputStandardSpecular o) {
            _ScrollX *= _Time;
                _ScrollY += _Time;
            float2 newUV = IN.uv_texture + float2(_ScrollX, _ScrollY);
            float2 newBumpUV = IN.uv_myBump + float2(_ScrollX, _ScrollY);

            o.Albedo = tex2D(_texture, newUV).rgb;
            o.Specular = _SpecColor.rgb;
            o.Smoothness = _Smooth;
            o.Normal = UnpackNormal(tex2D(_myBump, newBumpUV));
            o.Normal *= float3(_mySlider,_mySlider,1);
        }
            ENDCG 
    }    
    Fallback "Diffuse"
}