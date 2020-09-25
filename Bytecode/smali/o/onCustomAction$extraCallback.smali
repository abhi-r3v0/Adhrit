.class public final Lo/onCustomAction$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onCustomAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "extraCallback"
.end annotation


# static fields
.field private static extraCallback:Lo/RatingCompat$StarStyle$extraCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/RatingCompat$StarStyle$extraCallback<",
            "Lo/onCustomAction$extraCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public onMessageChannelReady:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

.field public onNavigationEvent:I

.field public onPostMessage:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 307
    new-instance v0, Lo/RatingCompat$StarStyle$onPostMessage;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lo/RatingCompat$StarStyle$onPostMessage;-><init>(I)V

    sput-object v0, Lo/onCustomAction$extraCallback;->extraCallback:Lo/RatingCompat$StarStyle$extraCallback;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onMessageChannelReady()Lo/onCustomAction$extraCallback;
    .locals 1

    .line 313
    sget-object v0, Lo/onCustomAction$extraCallback;->extraCallback:Lo/RatingCompat$StarStyle$extraCallback;

    invoke-interface {v0}, Lo/RatingCompat$StarStyle$extraCallback;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/onCustomAction$extraCallback;

    if-nez v0, :cond_0

    .line 314
    new-instance v0, Lo/onCustomAction$extraCallback;

    invoke-direct {v0}, Lo/onCustomAction$extraCallback;-><init>()V

    :cond_0
    return-object v0
.end method

.method public static onNavigationEvent(Lo/onCustomAction$extraCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 318
    iput v0, p0, Lo/onCustomAction$extraCallback;->onNavigationEvent:I

    const/4 v0, 0x0

    .line 319
    iput-object v0, p0, Lo/onCustomAction$extraCallback;->onMessageChannelReady:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 320
    iput-object v0, p0, Lo/onCustomAction$extraCallback;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 321
    sget-object v0, Lo/onCustomAction$extraCallback;->extraCallback:Lo/RatingCompat$StarStyle$extraCallback;

    invoke-interface {v0, p0}, Lo/RatingCompat$StarStyle$extraCallback;->onMessageChannelReady(Ljava/lang/Object;)Z

    return-void
.end method

.method static onPostMessage()V
    .locals 1

    .line 326
    :cond_0
    sget-object v0, Lo/onCustomAction$extraCallback;->extraCallback:Lo/RatingCompat$StarStyle$extraCallback;

    invoke-interface {v0}, Lo/RatingCompat$StarStyle$extraCallback;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void
.end method
