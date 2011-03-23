/* $Id: BodiesSOInterface.java 6136 2007-08-22 09:54:28Z rob $ */

import ibis.satin.WriteMethodsInterface;

public interface BodiesSOInterface extends WriteMethodsInterface {
    public void updateBodies(BodyUpdates b, int iteration);
    public void cleanup(int dummy);
}
