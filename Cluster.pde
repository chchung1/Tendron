public class Cluster
{
    public final static int NUM_STEMS = 7; //number of tendrils per cluster

    public Cluster(int len, int x, int y)
    {
        double ranAngle = Math.random()*(2*PI); 
        // your code here
        for(int i = 0; i < 7; i++){
          ranAngle = ranAngle+(2*PI/7);
          Tendril bob = new Tendril(len,ranAngle,x,y);
          bob.show();
        }
    }
}

