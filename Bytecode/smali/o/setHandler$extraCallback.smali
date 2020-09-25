.class final Lo/setHandler$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "extraCallback"
.end annotation


# instance fields
.field public final ICustomTabsCallback:Landroid/animation/Animator;

.field public final extraCallback:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Landroid/animation/Animator;)V
    .locals 1

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 240
    iput-object v0, p0, Lo/setHandler$extraCallback;->extraCallback:Landroid/view/animation/Animation;

    .line 241
    iput-object p1, p0, Lo/setHandler$extraCallback;->ICustomTabsCallback:Landroid/animation/Animator;

    if-eqz p1, :cond_0

    return-void

    .line 243
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Animator cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(Landroid/view/animation/Animation;)V
    .locals 1

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput-object p1, p0, Lo/setHandler$extraCallback;->extraCallback:Landroid/view/animation/Animation;

    const/4 v0, 0x0

    .line 233
    iput-object v0, p0, Lo/setHandler$extraCallback;->ICustomTabsCallback:Landroid/animation/Animator;

    if-eqz p1, :cond_0

    return-void

    .line 235
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Animation cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
