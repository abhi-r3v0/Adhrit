.class public final Lo/setGuidelineEnd;
.super Lo/setConstraintSet;
.source ""


# instance fields
.field public ICustomTabsCallback:Ljava/lang/String;

.field public extraCallback:Ljava/lang/String;

.field public onMessageChannelReady:Z

.field public onNavigationEvent:Ljava/lang/String;

.field public onPostMessage:Lo/values;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lo/setConstraintSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 233
    instance-of v0, p1, Lo/setGuidelineEnd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/setGuidelineEnd;->extraCallback:Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Lo/setGuidelineEnd;

    .line 1142
    iget-object p1, p1, Lo/setGuidelineEnd;->extraCallback:Ljava/lang/String;

    .line 233
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
