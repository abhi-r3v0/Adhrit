.class abstract Lo/FirebaseAuthWeakPasswordException;
.super Ljava/lang/Object;
.source ""


# instance fields
.field asBinder:Landroid/content/Context;

.field asInterface:Lo/FirebaseAuthWebException;

.field onRelationshipValidationResult:Lo/addIdTokenListener;


# direct methods
.method constructor <init>(Lo/FirebaseAuthWebException;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lo/FirebaseAuthWeakPasswordException;->asInterface:Lo/FirebaseAuthWebException;

    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lo/FirebaseAuthWeakPasswordException;->asBinder:Landroid/content/Context;

    .line 3843
    iget-object p1, p1, Lo/FirebaseAuthWebException;->ICustomTabsCallback$Stub$Proxy:Lo/addIdTokenListener;

    .line 39
    iput-object p1, p0, Lo/FirebaseAuthWeakPasswordException;->onRelationshipValidationResult:Lo/addIdTokenListener;

    return-void
.end method


# virtual methods
.method abstract extraCallback()V
.end method

.method onNavigationEvent()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method onNavigationEvent(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
