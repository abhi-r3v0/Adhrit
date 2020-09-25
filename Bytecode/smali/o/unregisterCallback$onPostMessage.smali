.class final Lo/unregisterCallback$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/unregisterCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onPostMessage"
.end annotation


# instance fields
.field public final extraCallback:I

.field public final onMessageChannelReady:I

.field public final onNavigationEvent:I

.field public final onPostMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 3318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3319
    iput-object p1, p0, Lo/unregisterCallback$onPostMessage;->onPostMessage:Ljava/lang/String;

    .line 3320
    iput p2, p0, Lo/unregisterCallback$onPostMessage;->onMessageChannelReady:I

    const/4 p1, 0x3

    .line 3321
    iput p1, p0, Lo/unregisterCallback$onPostMessage;->onNavigationEvent:I

    const/4 p1, 0x4

    .line 3322
    iput p1, p0, Lo/unregisterCallback$onPostMessage;->extraCallback:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 3310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3311
    iput-object p1, p0, Lo/unregisterCallback$onPostMessage;->onPostMessage:Ljava/lang/String;

    .line 3312
    iput p2, p0, Lo/unregisterCallback$onPostMessage;->onMessageChannelReady:I

    .line 3313
    iput p3, p0, Lo/unregisterCallback$onPostMessage;->onNavigationEvent:I

    const/4 p1, -0x1

    .line 3314
    iput p1, p0, Lo/unregisterCallback$onPostMessage;->extraCallback:I

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback(I)Z
    .locals 4

    .line 3327
    iget v0, p0, Lo/unregisterCallback$onPostMessage;->onNavigationEvent:I

    const/4 v1, 0x7

    const/4 v2, 0x1

    if-eq v0, v1, :cond_8

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eq v0, p1, :cond_8

    .line 3329
    iget v1, p0, Lo/unregisterCallback$onPostMessage;->extraCallback:I

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    if-ne v1, v3, :cond_3

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    return v2

    .line 3334
    :cond_3
    iget v0, p0, Lo/unregisterCallback$onPostMessage;->onNavigationEvent:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_4

    iget v0, p0, Lo/unregisterCallback$onPostMessage;->extraCallback:I

    if-ne v0, v1, :cond_5

    :cond_4
    const/16 v0, 0x8

    if-ne p1, v0, :cond_5

    return v2

    .line 3337
    :cond_5
    iget v0, p0, Lo/unregisterCallback$onPostMessage;->onNavigationEvent:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_6

    iget v0, p0, Lo/unregisterCallback$onPostMessage;->extraCallback:I

    if-ne v0, v1, :cond_7

    :cond_6
    const/16 v0, 0xb

    if-ne p1, v0, :cond_7

    return v2

    :cond_7
    const/4 p1, 0x0

    return p1

    :cond_8
    :goto_0
    return v2
.end method
