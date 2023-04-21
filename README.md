# ICG-Final-100830543
Alexander Phillips: 100830543
## **Low Fidelity Replica:**
![image](https://user-images.githubusercontent.com/94996976/233704045-db08372b-4fa0-4a17-9a91-3e7a78f2062d.png)
This image showcases the following:
- [X] A floor (In this case, that is the sewer water)
- [X] Back walls: Brick walls, USING TEXTURE FROM FREEPBRTEXTURES
- [X] Moving Objects: The player can be moved with A & D Keys, Enemies move back & forth
- [X] Moving Lights: Lights use a unity animation to move around, showcasing the shaders.
I used a model I made for my GDW game as the player(ninja turtle), the wall was made with a unity cube, the floor was done with a plane, and the enemies were made with a unity cylinder.
## **Bump Mapping**
![image](https://user-images.githubusercontent.com/94996976/233705225-f83838e4-2911-40f1-ae9b-4e41384b0dbb.png)\
The walls use a bump shader to add realism to the texture, and simulate extra geometry per pixel. This shader differs from the one from the lecture, as this shader:
- Uses a specular colour value to help emphasize the shiny points of the texture with colour.
![image](https://user-images.githubusercontent.com/94996976/233707136-f5b6760b-f585-4518-a46b-c57c485aeb48.png)
- Uses a smoothness variable to determine the shininess/dull amount of texture.
![image](https://user-images.githubusercontent.com/94996976/233707190-6c17c1ff-6e6c-40d0-900c-09aa157d2450.png)
- Uses scrolling texture code in line with the water to make it seem as if the player is moving through the sewers.
![image](https://user-images.githubusercontent.com/94996976/233707239-ff5a7c25-5f36-4f6c-a977-d5c73692d944.png)

## **Sewer-like moving water** 
![image](https://user-images.githubusercontent.com/94996976/233707876-ff5e3ecc-ed4c-4c7e-91ed-f7bacad7b9b2.png)\
The water was added to simulate what sewer water would look like, the shader creates frequent waves that modify the vertices and normals of the plane the material is placed onto. This shader differs from the one from the lecture, as this shader:
- Combines the scrolling overlay shader with the water shader that accesses the vertex shader.
- Adds an emission value to modify the colour to a more "sewer-like" hue.



