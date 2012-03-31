#ifndef DDMD_ANGLE_FACTORY_CPP
#define DDMD_ANGLE_FACTORY_CPP

/*
* Simpatico - Simulation Package for Polymeric and Molecular Liquids
*
* Copyright 2010, David Morse (morse@cems.umn.edu)
* Distributed under the terms of the GNU General Public License.
*/

#include <ddMd/potentials/angle/AngleFactory.h>
#include <ddMd/simulation/Simulation.h>

// AnglePotential interface and implementation classes
#include <ddMd/potentials/angle/AnglePotential.h>
#include <ddMd/potentials/angle/AnglePotentialImpl.h>

// Angle interaction classes
#include <inter/angle/CosineSqAngle.h>
#include <inter/angle/CosineAngle.h>

namespace DdMd
{

   using namespace Inter;

   /**
   * Default constructor.
   */
   AngleFactory::AngleFactory(Simulation& simulation)
    : Factory<AnglePotential>(),
      simulationPtr_(&simulation)
   {}

   /*
   * Return a pointer to a new AnglePotential, if possible.
   */
   AnglePotential* 
   AngleFactory::factory(const std::string& name) const
   {
      AnglePotential* ptr = 0;

      // Try subfactories first.
      ptr = trySubfactories(name);
      if (ptr) return ptr;

      if (name == "CosineSqAngle") {
         ptr = new AnglePotentialImpl<CosineSqAngle>(*simulationPtr_);
      } else
      if (name == "CosineAngle") {
         ptr = new AnglePotentialImpl<CosineAngle>(*simulationPtr_);
      } //else
      return ptr;
   }

}
#endif
