// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// SIDE: WEST

// ====================================================================================

//Creating simple tasks.
//Previous examples for task creation were needlessly complicated, they don't need to be. Whilst the completion of one is handled by 
//triggers in game, it can sometimes be enough to just have them be present on a players journal, it directs them, and keeps players on task.

//It is good practice to create them in the sides briefing file, as this means it seperates them neatly, without the creation of further files.

//Tasks follow this style:

//[civilian,["task1"],["Do this and you get a cookie","Earn Cookie","cookiemarker"],[0,0,0],1,2,true] call BIS_fnc_taskCreate
//[west,["task2"],["Good luck finding this cookie","Find Cookie","cookiemarker2"],objNull,1,3,true] call BIS_fnc_taskCreate //Task without a map location

//However, we don't use the civilian or west terms, as this is the western briefing file, instead, we can do something like this:

//[group player, "AANorth", ["Destroy the AA present in Northern Aliabad", "Destroy the AA", "AANorth"], "AANorth", true] call BIS_fnc_taskCreate;
//[group player, "AASouth", ["Destroy the AA present in Southern Aliabad", "Destroy the AA", "AASouth"], "AASouth", true] call BIS_fnc_taskCreate;

//The two above would create two tasks for the Blufor team, it would create tasks for any player who also has this file directed at them, this is why 
//it is better to handle tasks in the side's relevant briefing file. For the completion of tasks, refer to the trigger present on the framework's mission.sqm 
//in game.
// ====================================================================================

// NOTES: CREDITS
// The code below creates the administration sub-section of notes.

_cre = player createDiaryRecord ["diary", ["Credits","
<br/>
Made by Bubbus.
<br/><br/>
Made with F3 (http://www.ferstaberinde.com/f3/en/)
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
Don't drive the vehicles until the landing craft have beached.<br/>
Landing craft should only use the 'Release vehicle clamps' action once beached.<br/>
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
COMMANDER'S INTENT
<br/>
Ask the commander.
<br/><br/>
MOVEMENT PLAN
<br/>
Trust the commander.
<br/><br/>
FIRE SUPPORT PLAN
<br/>
Don't shoot the commander.
<br/><br/>
SPECIAL TASKS
<br/>
Obey the commander.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
According to current history, French forces have been containing the German invasion, but have been steadily pushed back through their own lands. They now fight from the shores of historical Omaha Beach, being evacuated by their navy with British assistance to the UK. The bulk of the force is sailing to safety, but some remain to delay the invaders - they must be kept from the beach before your arrival.<br/>
<br/>
Ready to make the jump, Company TIMELORD is mounted in Mk10 LCUs arrayed in front of the USS Zemeckis. The Zemeckis' nuclear reactor, being the only power source in the region capable of powering the time pylons, has been brought close to the shores of historical Omaha Beach.<br/>
<br/>
<br/>
MISSION<br/>
<br/>
> Move the landing craft between the pylons, facing the beach, before 21:23 PM.<br/>
> Travel to 1940 and assault the beach, securing the beachheads and moving to Phase Line 1.<br/>
> A radio jammer was transported previously to deny German command of accurate battle reports. If Hitler hears of our arrival, he may flee. Visit the jammer and ensure it is not destroyed by German forces.<br/>
> Proceed past Phase Line 1, capturing Le Bray and its neighbouring villages.<br/>
> German forces are still pouring into the area. Defend against any forces and move past Phase Line 2 when clear to proceed.<br/>
> Hitler's location at this time is known from history. Move to the farmhouses and REMOVE FUHRER.<br/>
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
Recent advances in scientific understanding unveiled a new kind of particle, linked to its past by a quantum event.  This discovery would be useless if not for a simple fact: huge quantities of energy can be applied to the particle, entangling itself with with any nearby objects.  Time travel is possible.<br/>
<br/>
Under the strictest secrecy, this knowledge was used to develop the first time machines.  Two particles were captured, and their links were traced.  The first would return to the 7th of May, 1940.  The next, the 12th of August.  Before the end of the day, news had reached NATO and the decision was almost instantly made.<br/>
<br/>
We're going to kill Hitler.<br/>
<br/>
The plan was drawn out within three days, and by the end of the first week the plan was ready to execute.  The plan is now well in motion and guarded by an entire eighth of NATO's military might - and part one went exactly as planned.<br/>
<br/>
In the morning of July 5th, 2035 an agent was transported to the 7th of May, 1940.  He was a French national, equipped with proof of the future of the world if history was left to run its course.  His mission was:  Convince France to hold fast, and contain the German invasion within itself until mid-August.<br/>
<br/>
The agent had succeeded.  What still wasn't clear was if the second part of the plan would succeed.  The announcement of the plan has sent the world into chaos - it's important to wrap the operation up and return the world's past to certainty.  <br/>
<br/>
Part two of the plan can't come sooner, but it's still to come.  You're about to make history - and make it yours.<br/>
"]];

// ====================================================================================