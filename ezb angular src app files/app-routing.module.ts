import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { AppointmentComponent } from './appointment/appointment.component';
import { BetweenAccountsComponent } from './between-accounts/between-accounts.component';
import { DepositComponent } from './deposit/deposit.component';
import { ErrorComponent } from './error/error.component';
import { HeaderComponent } from './header/header.component';
import { LoginComponent } from './login/login.component';
import { PrimaryAccountComponent } from './primary-account/primary-account.component';
import { ProfileComponent } from './profile/profile.component';
import { RecipientComponent } from './recipient/recipient.component';
import { SavingsAccountComponent } from './savings-account/savings-account.component';
import { SignupComponent } from './signup/signup.component';
import { ToSomeoneElseComponent } from './to-someone-else/to-someone-else.component';
import { UserFrontComponent } from './user-front/user-front.component';
import { WithdrawComponent } from './withdraw/withdraw.component';

const routes: Routes = [
  {path:'login' , component: LoginComponent},
  {path:'appointment' , component: AppointmentComponent},
  {path:'between-accounts' , component: BetweenAccountsComponent},
  {path:'deposit' , component: DepositComponent},
  {path:'header' , component: HeaderComponent},
  {path:'primary-account' , component: PrimaryAccountComponent},
  {path:'profile' , component: ProfileComponent},
  {path:'recipient' , component: RecipientComponent},
  {path:'savings-account' , component: SavingsAccountComponent},
  {path:'signup' , component: SignupComponent},
  {path:'to-someone-else' , component: ToSomeoneElseComponent},
  {path:'user-front' , component: UserFrontComponent},
  {path:'withdraw' , component: WithdrawComponent},
  {path:'', component: LoginComponent},
  {path:'**', component:ErrorComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
