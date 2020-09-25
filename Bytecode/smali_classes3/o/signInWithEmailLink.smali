.class public final Lo/signInWithEmailLink;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/signInWithEmailLink$onNavigationEvent;
    }
.end annotation


# instance fields
.field public ICustomTabsCallback:Landroid/animation/ValueAnimator;

.field public extraCallback:Lo/signInWithEmailLink$onNavigationEvent;

.field public final onMessageChannelReady:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/signInWithEmailLink$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field

.field public final onPostMessage:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/signInWithEmailLink;->onMessageChannelReady:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lo/signInWithEmailLink;->extraCallback:Lo/signInWithEmailLink$onNavigationEvent;

    .line 42
    iput-object v0, p0, Lo/signInWithEmailLink;->ICustomTabsCallback:Landroid/animation/ValueAnimator;

    .line 44
    new-instance v0, Lo/signInWithEmailLink$2;

    invoke-direct {v0, p0}, Lo/signInWithEmailLink$2;-><init>(Lo/signInWithEmailLink;)V

    iput-object v0, p0, Lo/signInWithEmailLink;->onPostMessage:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method
