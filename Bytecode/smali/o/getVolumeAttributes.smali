.class public Lo/getVolumeAttributes;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getVolumeAttributes$extraCallback;,
        Lo/getVolumeAttributes$onNavigationEvent;,
        Lo/getVolumeAttributes$ICustomTabsCallback;,
        Lo/getVolumeAttributes$onMessageChannelReady;,
        Lo/getVolumeAttributes$onRelationshipValidationResult;,
        Lo/getVolumeAttributes$asInterface;,
        Lo/getVolumeAttributes$ICustomTabsCallback$Stub;,
        Lo/getVolumeAttributes$asBinder;,
        Lo/getVolumeAttributes$onPostMessage;
    }
.end annotation


# static fields
.field public static final onMessageChannelReady:Lo/getVolumeAttributes;


# instance fields
.field private final ICustomTabsCallback:Lo/getVolumeAttributes$onPostMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Lo/getVolumeAttributes$onMessageChannelReady;

    invoke-direct {v0}, Lo/getVolumeAttributes$onMessageChannelReady;-><init>()V

    .line 56
    invoke-virtual {v0}, Lo/getVolumeAttributes$onMessageChannelReady;->ICustomTabsCallback()Lo/getVolumeAttributes;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lo/getVolumeAttributes;->asInterface()Lo/getVolumeAttributes;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lo/getVolumeAttributes;->ICustomTabsCallback$Stub()Lo/getVolumeAttributes;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lo/getVolumeAttributes;->asBinder()Lo/getVolumeAttributes;

    move-result-object v0

    sput-object v0, Lo/getVolumeAttributes;->onMessageChannelReady:Lo/getVolumeAttributes;

    return-void
.end method

.method private constructor <init>(Landroid/view/WindowInsets;)V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 66
    new-instance v0, Lo/getVolumeAttributes$onRelationshipValidationResult;

    invoke-direct {v0, p0, p1}, Lo/getVolumeAttributes$onRelationshipValidationResult;-><init>(Lo/getVolumeAttributes;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lo/getVolumeAttributes;->ICustomTabsCallback:Lo/getVolumeAttributes$onPostMessage;

    return-void

    .line 67
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 68
    new-instance v0, Lo/getVolumeAttributes$asInterface;

    invoke-direct {v0, p0, p1}, Lo/getVolumeAttributes$asInterface;-><init>(Lo/getVolumeAttributes;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lo/getVolumeAttributes;->ICustomTabsCallback:Lo/getVolumeAttributes$onPostMessage;

    return-void

    .line 69
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 70
    new-instance v0, Lo/getVolumeAttributes$ICustomTabsCallback$Stub;

    invoke-direct {v0, p0, p1}, Lo/getVolumeAttributes$ICustomTabsCallback$Stub;-><init>(Lo/getVolumeAttributes;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lo/getVolumeAttributes;->ICustomTabsCallback:Lo/getVolumeAttributes$onPostMessage;

    return-void

    .line 71
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_3

    .line 72
    new-instance v0, Lo/getVolumeAttributes$asBinder;

    invoke-direct {v0, p0, p1}, Lo/getVolumeAttributes$asBinder;-><init>(Lo/getVolumeAttributes;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lo/getVolumeAttributes;->ICustomTabsCallback:Lo/getVolumeAttributes$onPostMessage;

    return-void

    .line 74
    :cond_3
    new-instance p1, Lo/getVolumeAttributes$onPostMessage;

    invoke-direct {p1, p0}, Lo/getVolumeAttributes$onPostMessage;-><init>(Lo/getVolumeAttributes;)V

    iput-object p1, p0, Lo/getVolumeAttributes;->ICustomTabsCallback:Lo/getVolumeAttributes$onPostMessage;

    return-void
.end method

.method public constructor <init>(Lo/getVolumeAttributes;)V
    .locals 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    .line 86
    iget-object p1, p1, Lo/getVolumeAttributes;->ICustomTabsCallback:Lo/getVolumeAttributes$onPostMessage;

    .line 87
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    instance-of v0, p1, Lo/getVolumeAttributes$onRelationshipValidationResult;

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Lo/getVolumeAttributes$onRelationshipValidationResult;

    check-cast p1, Lo/getVolumeAttributes$onRelationshipValidationResult;

    invoke-direct {v0, p0, p1}, Lo/getVolumeAttributes$onRelationshipValidationResult;-><init>(Lo/getVolumeAttributes;Lo/getVolumeAttributes$onRelationshipValidationResult;)V

    iput-object v0, p0, Lo/getVolumeAttributes;->ICustomTabsCallback:Lo/getVolumeAttributes$onPostMessage;

    return-void

    .line 89
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    instance-of v0, p1, Lo/getVolumeAttributes$asInterface;

    if-eqz v0, :cond_1

    .line 90
    new-instance v0, Lo/getVolumeAttributes$asInterface;

    check-cast p1, Lo/getVolumeAttributes$asInterface;

    invoke-direct {v0, p0, p1}, Lo/getVolumeAttributes$asInterface;-><init>(Lo/getVolumeAttributes;Lo/getVolumeAttributes$asInterface;)V

    iput-object v0, p0, Lo/getVolumeAttributes;->ICustomTabsCallback:Lo/getVolumeAttributes$onPostMessage;

    return-void

    .line 91
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    instance-of v0, p1, Lo/getVolumeAttributes$ICustomTabsCallback$Stub;

    if-eqz v0, :cond_2

    .line 92
    new-instance v0, Lo/getVolumeAttributes$ICustomTabsCallback$Stub;

    check-cast p1, Lo/getVolumeAttributes$ICustomTabsCallback$Stub;

    invoke-direct {v0, p0, p1}, Lo/getVolumeAttributes$ICustomTabsCallback$Stub;-><init>(Lo/getVolumeAttributes;Lo/getVolumeAttributes$ICustomTabsCallback$Stub;)V

    iput-object v0, p0, Lo/getVolumeAttributes;->ICustomTabsCallback:Lo/getVolumeAttributes$onPostMessage;

    return-void

    .line 93
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_3

    instance-of v0, p1, Lo/getVolumeAttributes$asBinder;

    if-eqz v0, :cond_3

    .line 94
    new-instance v0, Lo/getVolumeAttributes$asBinder;

    check-cast p1, Lo/getVolumeAttributes$asBinder;

    invoke-direct {v0, p0, p1}, Lo/getVolumeAttributes$asBinder;-><init>(Lo/getVolumeAttributes;Lo/getVolumeAttributes$asBinder;)V

    iput-object v0, p0, Lo/getVolumeAttributes;->ICustomTabsCallback:Lo/getVolumeAttributes$onPostMessage;

    return-void

    .line 96
    :cond_3
    new-instance p1, Lo/getVolumeAttributes$onPostMessage;

    invoke-direct {p1, p0}, Lo/getVolumeAttributes$onPostMessage;-><init>(Lo/getVolumeAttributes;)V

    iput-object p1, p0, Lo/getVolumeAttributes;->ICustomTabsCallback:Lo/getVolumeAttributes$onPostMessage;

    return-void

    .line 100
    :cond_4
    new-instance p1, Lo/getVolumeAttributes$onPostMessage;

    invoke-direct {p1, p0}, Lo/getVolumeAttributes$onPostMessage;-><init>(Lo/getVolumeAttributes;)V

    iput-object p1, p0, Lo/getVolumeAttributes;->ICustomTabsCallback:Lo/getVolumeAttributes$onPostMessage;

    return-void
.end method

.method static ICustomTabsCallback(Lo/getLong;IIII)Lo/getLong;
    .locals 5

    .line 837
    iget v0, p0, Lo/getLong;->onPostMessage:I

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 838
    iget v2, p0, Lo/getLong;->ICustomTabsCallback:I

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 839
    iget v3, p0, Lo/getLong;->onMessageChannelReady:I

    sub-int/2addr v3, p3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 840
    iget v4, p0, Lo/getLong;->onNavigationEvent:I

    sub-int/2addr v4, p4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ne v0, p1, :cond_0

    if-ne v2, p2, :cond_0

    if-ne v3, p3, :cond_0

    if-ne v1, p4, :cond_0

    return-object p0

    .line 844
    :cond_0
    invoke-static {v0, v2, v3, v1}, Lo/getLong;->ICustomTabsCallback(IIII)Lo/getLong;

    move-result-object p0

    return-object p0
.end method

.method public static onPostMessage(Landroid/view/WindowInsets;)Lo/getVolumeAttributes;
    .locals 1

    .line 113
    new-instance v0, Lo/getVolumeAttributes;

    if-eqz p0, :cond_0

    check-cast p0, Landroid/view/WindowInsets;

    invoke-direct {v0, p0}, Lo/getVolumeAttributes;-><init>(Landroid/view/WindowInsets;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    .line 1064
    throw p0
.end method


# virtual methods
.method public ICustomTabsCallback()I
    .locals 1

    .line 155
    invoke-virtual {p0}, Lo/getVolumeAttributes;->onTransact()Lo/getLong;

    move-result-object v0

    iget v0, v0, Lo/getLong;->onMessageChannelReady:I

    return v0
.end method

.method public ICustomTabsCallback(IIII)Lo/getVolumeAttributes;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 265
    new-instance v0, Lo/getVolumeAttributes$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/getVolumeAttributes$onMessageChannelReady;-><init>(Lo/getVolumeAttributes;)V

    .line 266
    invoke-static {p1, p2, p3, p4}, Lo/getLong;->ICustomTabsCallback(IIII)Lo/getLong;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/getVolumeAttributes$onMessageChannelReady;->onPostMessage(Lo/getLong;)Lo/getVolumeAttributes$onMessageChannelReady;

    move-result-object p1

    .line 267
    invoke-virtual {p1}, Lo/getVolumeAttributes$onMessageChannelReady;->ICustomTabsCallback()Lo/getVolumeAttributes;

    move-result-object p1

    return-object p1
.end method

.method public ICustomTabsCallback$Stub()Lo/getVolumeAttributes;
    .locals 1

    .line 385
    iget-object v0, p0, Lo/getVolumeAttributes;->ICustomTabsCallback:Lo/getVolumeAttributes$onPostMessage;

    invoke-virtual {v0}, Lo/getVolumeAttributes$onPostMessage;->onPostMessage()Lo/getVolumeAttributes;

    move-result-object v0

    return-object v0
.end method

.method public asBinder()Lo/getVolumeAttributes;
    .locals 1

    .line 244
    iget-object v0, p0, Lo/getVolumeAttributes;->ICustomTabsCallback:Lo/getVolumeAttributes$onPostMessage;

    invoke-virtual {v0}, Lo/getVolumeAttributes$onPostMessage;->ICustomTabsCallback()Lo/getVolumeAttributes;

    move-result-object v0

    return-object v0
.end method

.method public asInterface()Lo/getVolumeAttributes;
    .locals 1

    .line 410
    iget-object v0, p0, Lo/getVolumeAttributes;->ICustomTabsCallback:Lo/getVolumeAttributes$onPostMessage;

    invoke-virtual {v0}, Lo/getVolumeAttributes$onPostMessage;->asInterface()Lo/getVolumeAttributes;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 549
    :cond_0
    instance-of v0, p1, Lo/getVolumeAttributes;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 552
    :cond_1
    check-cast p1, Lo/getVolumeAttributes;

    .line 553
    iget-object v0, p0, Lo/getVolumeAttributes;->ICustomTabsCallback:Lo/getVolumeAttributes$onPostMessage;

    iget-object p1, p1, Lo/getVolumeAttributes;->ICustomTabsCallback:Lo/getVolumeAttributes$onPostMessage;

    invoke-static {v0, p1}, Lo/isThumbUp;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public extraCallback()I
    .locals 1

    .line 141
    invoke-virtual {p0}, Lo/getVolumeAttributes;->onTransact()Lo/getLong;

    move-result-object v0

    iget v0, v0, Lo/getLong;->ICustomTabsCallback:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 558
    iget-object v0, p0, Lo/getVolumeAttributes;->ICustomTabsCallback:Lo/getVolumeAttributes$onPostMessage;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public onMessageChannelReady()Z
    .locals 1

    .line 216
    iget-object v0, p0, Lo/getVolumeAttributes;->ICustomTabsCallback:Lo/getVolumeAttributes$onPostMessage;

    invoke-virtual {v0}, Lo/getVolumeAttributes$onPostMessage;->onNavigationEvent()Z

    move-result v0

    return v0
.end method

.method public onNavigationEvent()I
    .locals 1

    .line 169
    invoke-virtual {p0}, Lo/getVolumeAttributes;->onTransact()Lo/getLong;

    move-result-object v0

    iget v0, v0, Lo/getLong;->onNavigationEvent:I

    return v0
.end method

.method public onPostMessage()I
    .locals 1

    .line 127
    invoke-virtual {p0}, Lo/getVolumeAttributes;->onTransact()Lo/getLong;

    move-result-object v0

    iget v0, v0, Lo/getLong;->onPostMessage:I

    return v0
.end method

.method public onPostMessage(IIII)Lo/getVolumeAttributes;
    .locals 1

    .line 541
    iget-object v0, p0, Lo/getVolumeAttributes;->ICustomTabsCallback:Lo/getVolumeAttributes$onPostMessage;

    invoke-virtual {v0, p1, p2, p3, p4}, Lo/getVolumeAttributes$onPostMessage;->extraCallback(IIII)Lo/getVolumeAttributes;

    move-result-object p1

    return-object p1
.end method

.method public onRelationshipValidationResult()Landroid/view/WindowInsets;
    .locals 2

    .line 569
    iget-object v0, p0, Lo/getVolumeAttributes;->ICustomTabsCallback:Lo/getVolumeAttributes$onPostMessage;

    instance-of v1, v0, Lo/getVolumeAttributes$asBinder;

    if-eqz v1, :cond_0

    check-cast v0, Lo/getVolumeAttributes$asBinder;

    iget-object v0, v0, Lo/getVolumeAttributes$asBinder;->onNavigationEvent:Landroid/view/WindowInsets;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onTransact()Lo/getLong;
    .locals 1

    .line 428
    iget-object v0, p0, Lo/getVolumeAttributes;->ICustomTabsCallback:Lo/getVolumeAttributes$onPostMessage;

    invoke-virtual {v0}, Lo/getVolumeAttributes$onPostMessage;->ICustomTabsCallback$Stub()Lo/getLong;

    move-result-object v0

    return-object v0
.end method
