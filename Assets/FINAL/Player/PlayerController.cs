using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : MonoBehaviour
{
    Rigidbody playerRb;
    float speed = 4f;
    // Start is called before the first frame update
    void Start()
    {
        playerRb = GetComponent<Rigidbody>();
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKey(KeyCode.D)) 
        {
            playerRb.velocity = transform.right * speed;
        }
        else if (Input.GetKey(KeyCode.A))
        {
            playerRb.velocity = -transform.right * speed;
        }

        else
        {
            playerRb.velocity = Vector3.zero;
        }
    }
}
