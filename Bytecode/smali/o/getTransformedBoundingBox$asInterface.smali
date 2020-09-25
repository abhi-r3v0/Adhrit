.class final Lo/getTransformedBoundingBox$asInterface;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getTransformedBoundingBox;->ICustomTabsCallback(Ljava/lang/String;Z)Ljava/lang/Integer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Lo/setInitialSavedState;",
        "Lo/addWrites;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "background",
        "Lcom/dreamplug/fabrik/helper/assets/Background;",
        "invoke",
        "com/dreamplug/fabrik/ui/onboardAddCard/MCFVerifyCardFragment$getBackgroundColour$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Z

.field private synthetic onMessageChannelReady:Lo/getTransformedBoundingBox;

.field private synthetic onNavigationEvent:Lo/toDebugString$ICustomTabsCallback;


# direct methods
.method constructor <init>(Lo/getTransformedBoundingBox;Lo/toDebugString$ICustomTabsCallback;Z)V
    .locals 0

    iput-object p1, p0, Lo/getTransformedBoundingBox$asInterface;->onMessageChannelReady:Lo/getTransformedBoundingBox;

    iput-object p2, p0, Lo/getTransformedBoundingBox$asInterface;->onNavigationEvent:Lo/toDebugString$ICustomTabsCallback;

    iput-boolean p3, p0, Lo/getTransformedBoundingBox$asInterface;->extraCallback:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 58
    check-cast p1, Lo/setInitialSavedState;

    if-eqz p1, :cond_1

    .line 1251
    instance-of v0, p1, Lo/setInitialSavedState$extraCallback;

    if-eqz v0, :cond_0

    .line 1253
    :try_start_0
    iget-object v0, p0, Lo/getTransformedBoundingBox$asInterface;->onNavigationEvent:Lo/toDebugString$ICustomTabsCallback;

    check-cast p1, Lo/setInitialSavedState$extraCallback;

    .line 2012
    iget-object p1, p1, Lo/setInitialSavedState$extraCallback;->extraCallback:Ljava/util/List;

    .line 1253
    invoke-static {p1}, Lo/getSessionPersistenceKey;->extraCallback(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iput-object p1, v0, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    .line 1258
    :cond_0
    instance-of v0, p1, Lo/setInitialSavedState$onMessageChannelReady;

    if-eqz v0, :cond_1

    .line 1261
    :try_start_1
    iget-object v0, p0, Lo/getTransformedBoundingBox$asInterface;->onNavigationEvent:Lo/toDebugString$ICustomTabsCallback;

    check-cast p1, Lo/setInitialSavedState$onMessageChannelReady;

    .line 2019
    iget p1, p1, Lo/setInitialSavedState$onMessageChannelReady;->onNavigationEvent:I

    .line 1261
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1268
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lo/getTransformedBoundingBox$asInterface;->extraCallback:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lo/getTransformedBoundingBox$asInterface;->onNavigationEvent:Lo/toDebugString$ICustomTabsCallback;

    iget-object p1, p1, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_3

    .line 1269
    iget-object p1, p0, Lo/getTransformedBoundingBox$asInterface;->onMessageChannelReady:Lo/getTransformedBoundingBox;

    .line 2313
    iget-object v0, p1, Lo/getTransformedBoundingBox;->onMessageChannelReady:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1269
    sget-object p1, Lo/isPreLayout;->onPostMessage:Lo/isPreLayout;

    iget-object p1, p0, Lo/getTransformedBoundingBox$asInterface;->onNavigationEvent:Lo/toDebugString$ICustomTabsCallback;

    iget-object p1, p1, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_2

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1}, Lo/isPreLayout;->onMessageChannelReady(I)Ljava/lang/String;

    move-result-object v1

    .line 3009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    const-string v2, "Resources.getSystem()"

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v2, 0x1

    const/high16 v3, 0x41800000    # 16.0f

    .line 3010
    invoke-static {v2, v3, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x7c

    .line 1269
    invoke-static/range {v0 .. v7}, Lo/missCount;->onNavigationEvent(Landroid/view/View;Ljava/lang/String;FLjava/lang/String;Ljava/lang/Float;[FLjava/lang/Integer;I)V

    .line 58
    :cond_3
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
