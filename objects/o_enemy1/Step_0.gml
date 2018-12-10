// ---------------------------------------- State Machine
switch (state) {
	#region Follow
	case states.follow:
		enemy1FollowState()
	break
	#endregion
	
	#region Charge Attack
	case states.charge_attack:
		enemy1ChargeAttackState()
	break
	#endregion
	
	#region Attack
	case states.attack:
		enemy1AttackState()
	break
	#endregion
	
	#region Taking Damage/Shaking
	case states.damaged:
		enemy1DamagedState()
	break
	#endregion
}