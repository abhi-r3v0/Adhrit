.class public final Lo/preferLastSpan$asBinder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/preferLastSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "asBinder"
.end annotation


# static fields
.field public static final app_loader:I = 0x7f120000

.field public static final neu_loader:I = 0x7f12002a

.field public static final neu_progress_btn:I = 0x7f12002b

.field public static final progress_btn:I = 0x7f120033

.field public static final slider:I = 0x7f12003b


# instance fields
.field private final query:Lo/AutoValue_CrashlyticsReport_Session_Application;

.field private final targetId:I

.field private final view:Lo/getArch;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1032
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/AutoValue_CrashlyticsReport_Session_Application;ILo/getArch;)V
    .locals 0

    .line 2026
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2027
    iput-object p1, p0, Lo/preferLastSpan$asBinder;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    .line 2028
    iput p2, p0, Lo/preferLastSpan$asBinder;->targetId:I

    .line 2029
    iput-object p3, p0, Lo/preferLastSpan$asBinder;->view:Lo/getArch;

    return-void
.end method

.method public static onPostMessage(Landroid/animation/AnimatorSet;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/AnimatorSet;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .line 1039
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_0

    .line 1040
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    .line 1041
    invoke-virtual {v5}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v6

    invoke-virtual {v5}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v8

    add-long/2addr v6, v8

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1043
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1044
    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1045
    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1047
    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public final getQuery()Lo/AutoValue_CrashlyticsReport_Session_Application;
    .locals 1

    .line 2033
    iget-object v0, p0, Lo/preferLastSpan$asBinder;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    return-object v0
.end method

.method public final getTargetId()I
    .locals 1

    .line 2037
    iget v0, p0, Lo/preferLastSpan$asBinder;->targetId:I

    return v0
.end method

.method public final getView()Lo/getArch;
    .locals 1

    .line 2041
    iget-object v0, p0, Lo/preferLastSpan$asBinder;->view:Lo/getArch;

    return-object v0
.end method
