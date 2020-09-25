.class Lorg/npci/upi/security/pinactivitycomponent/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/npci/upi/security/pinactivitycomponent/GetCredential;


# direct methods
.method constructor <init>(Lorg/npci/upi/security/pinactivitycomponent/GetCredential;)V
    .locals 0

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/n;->a:Lorg/npci/upi/security/pinactivitycomponent/GetCredential;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/n;->a:Lorg/npci/upi/security/pinactivitycomponent/GetCredential;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->access$102(Lorg/npci/upi/security/pinactivitycomponent/GetCredential;Z)Z

    return-void
.end method
