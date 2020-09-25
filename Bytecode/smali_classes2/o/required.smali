.class public final Lo/required;
.super Lo/removeDependent;


# instance fields
.field private synthetic ICustomTabsCallback:Lo/stopScroll;


# direct methods
.method public constructor <init>(Lo/stopScroll;)V
    .locals 0

    iput-object p1, p0, Lo/required;->ICustomTabsCallback:Lo/stopScroll;

    invoke-direct {p0}, Lo/removeDependent;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 5

    iget-object v0, p0, Lo/required;->ICustomTabsCallback:Lo/stopScroll;

    iget-object v0, v0, Lo/stopScroll;->onPostMessage:Lo/isSet;

    .line 1000
    iget-object v1, v0, Lo/isSet;->extraCallback:Lo/addItemDecoration$onPostMessage;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "unlinkToDeath"

    invoke-virtual {v1, v4, v3}, Lo/addItemDecoration$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Lo/isSet;->newSession:Landroid/os/IInterface;

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v0, v0, Lo/isSet;->onRelationshipValidationResult:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v0, p0, Lo/required;->ICustomTabsCallback:Lo/stopScroll;

    iget-object v0, v0, Lo/stopScroll;->onPostMessage:Lo/isSet;

    const/4 v1, 0x0

    .line 2000
    iput-object v1, v0, Lo/isSet;->newSession:Landroid/os/IInterface;

    iget-object v0, p0, Lo/required;->ICustomTabsCallback:Lo/stopScroll;

    iget-object v0, v0, Lo/stopScroll;->onPostMessage:Lo/isSet;

    .line 3000
    iput-boolean v2, v0, Lo/isSet;->onPostMessage:Z

    return-void
.end method
