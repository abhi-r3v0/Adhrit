.class public final Lo/getExperimentsToAdd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isDefaultApp;


# static fields
.field public static final onPostMessage:[I


# instance fields
.field private final arg$1:Lcom/google/firebase/iid/FirebaseInstanceId;

.field private final arg$2:Ljava/lang/String;

.field private final arg$3:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010448

    aput v2, v0, v1

    .line 36
    sput-object v0, Lo/getExperimentsToAdd;->onPostMessage:[I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getExperimentsToAdd;->arg$1:Lcom/google/firebase/iid/FirebaseInstanceId;

    iput-object p2, p0, Lo/getExperimentsToAdd;->arg$2:Ljava/lang/String;

    iput-object p3, p0, Lo/getExperimentsToAdd;->arg$3:Ljava/lang/String;

    return-void
.end method

.method public static ICustomTabsCallback(Landroid/view/View;F)V
    .locals 11

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lo/toStringMap$ICustomTabsCallback$Stub;->app_bar_elevation_anim_duration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 64
    new-instance v1, Landroid/animation/StateListAnimator;

    invoke-direct {v1}, Landroid/animation/StateListAnimator;-><init>()V

    const/4 v2, 0x3

    new-array v2, v2, [I

    const v3, 0x101000e

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 67
    sget v5, Lo/toStringMap$extraCallback;->state_liftable:I

    const/4 v6, 0x1

    aput v5, v2, v6

    sget v5, Lo/toStringMap$extraCallback;->state_lifted:I

    neg-int v5, v5

    const/4 v7, 0x2

    aput v5, v2, v7

    new-array v5, v6, [F

    const/4 v7, 0x0

    aput v7, v5, v4

    const-string v8, "elevation"

    .line 69
    invoke-static {p0, v8, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    int-to-long v9, v0

    invoke-virtual {v5, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 67
    invoke-virtual {v1, v2, v0}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    new-array v0, v6, [I

    aput v3, v0, v4

    new-array v2, v6, [F

    aput p1, v2, v4

    .line 74
    invoke-static {p0, v8, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 72
    invoke-virtual {v1, v0, p1}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    new-array p1, v4, [I

    new-array v0, v6, [F

    aput v7, v0, v4

    .line 77
    invoke-static {p0, v8, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 79
    invoke-virtual {p0, v1}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 3

    .line 2000
    iget-object v0, p0, Lo/getExperimentsToAdd;->arg$1:Lcom/google/firebase/iid/FirebaseInstanceId;

    iget-object v1, p0, Lo/getExperimentsToAdd;->arg$2:Ljava/lang/String;

    iget-object v2, p0, Lo/getExperimentsToAdd;->arg$3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/firebase/iid/FirebaseInstanceId;->lambda$getInstanceId$3$FirebaseInstanceId(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
