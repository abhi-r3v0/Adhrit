.class public final Lo/SizeFilterJsonAdapter;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:I

.field public final onMessageChannelReady:I

.field public final onPostMessage:I


# direct methods
.method private constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lo/SizeFilterJsonAdapter;->ICustomTabsCallback:I

    iput p2, p0, Lo/SizeFilterJsonAdapter;->onPostMessage:I

    iput p3, p0, Lo/SizeFilterJsonAdapter;->onMessageChannelReady:I

    return-void
.end method

.method public static ICustomTabsCallback()Lo/SizeFilterJsonAdapter;
    .locals 2

    new-instance v0, Lo/SizeFilterJsonAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lo/SizeFilterJsonAdapter;-><init>(III)V

    return-object v0
.end method

.method public static onMessageChannelReady(Lo/setCurrentItem$default;)Lo/SizeFilterJsonAdapter;
    .locals 2

    iget-boolean v0, p0, Lo/setCurrentItem$default;->extraCallback:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance p0, Lo/SizeFilterJsonAdapter;

    const/4 v0, 0x3

    invoke-direct {p0, v0, v1, v1}, Lo/SizeFilterJsonAdapter;-><init>(III)V

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lo/setCurrentItem$default;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_1

    new-instance p0, Lo/SizeFilterJsonAdapter;

    const/4 v0, 0x2

    invoke-direct {p0, v0, v1, v1}, Lo/SizeFilterJsonAdapter;-><init>(III)V

    return-object p0

    :cond_1
    iget-boolean v0, p0, Lo/setCurrentItem$default;->onRelationshipValidationResult:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lo/SizeFilterJsonAdapter;->ICustomTabsCallback()Lo/SizeFilterJsonAdapter;

    move-result-object p0

    return-object p0

    :cond_2
    iget v0, p0, Lo/setCurrentItem$default;->onTransact:I

    iget p0, p0, Lo/setCurrentItem$default;->onPostMessage:I

    invoke-static {v0, p0}, Lo/SizeFilterJsonAdapter;->onNavigationEvent(II)Lo/SizeFilterJsonAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static onNavigationEvent()Lo/SizeFilterJsonAdapter;
    .locals 3

    new-instance v0, Lo/SizeFilterJsonAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1, v1}, Lo/SizeFilterJsonAdapter;-><init>(III)V

    return-object v0
.end method

.method public static onNavigationEvent(II)Lo/SizeFilterJsonAdapter;
    .locals 2

    new-instance v0, Lo/SizeFilterJsonAdapter;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lo/SizeFilterJsonAdapter;-><init>(III)V

    return-object v0
.end method


# virtual methods
.method public final asBinder()Z
    .locals 2

    iget v0, p0, Lo/SizeFilterJsonAdapter;->ICustomTabsCallback:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final extraCallback()Z
    .locals 1

    iget v0, p0, Lo/SizeFilterJsonAdapter;->ICustomTabsCallback:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onMessageChannelReady()Z
    .locals 2

    iget v0, p0, Lo/SizeFilterJsonAdapter;->ICustomTabsCallback:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onPostMessage()Z
    .locals 2

    iget v0, p0, Lo/SizeFilterJsonAdapter;->ICustomTabsCallback:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
