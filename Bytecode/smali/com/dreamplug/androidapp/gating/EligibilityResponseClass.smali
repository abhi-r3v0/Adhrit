.class public final Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0010\t\n\u0002\u0008\u000e\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R \u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001e\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\"\u0010\u0015\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001e\u0010\u001b\u001a\u00020\u001c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R \u0010!\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u0006\"\u0004\u0008#\u0010\u0008R\"\u0010$\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\u0008%\u0010\u0017\"\u0004\u0008&\u0010\u0019R \u0010\'\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u0006\"\u0004\u0008)\u0010\u0008\u00a8\u0006*"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;",
        "",
        "()V",
        "bureau",
        "",
        "getBureau",
        "()Ljava/lang/String;",
        "setBureau",
        "(Ljava/lang/String;)V",
        "cibilScore",
        "",
        "getCibilScore",
        "()I",
        "setCibilScore",
        "(I)V",
        "creditScoreExist",
        "",
        "getCreditScoreExist",
        "()Z",
        "setCreditScoreExist",
        "(Z)V",
        "dobGiven",
        "getDobGiven",
        "()Ljava/lang/Boolean;",
        "setDobGiven",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "earnedPoints",
        "",
        "getEarnedPoints",
        "()J",
        "setEarnedPoints",
        "(J)V",
        "message",
        "getMessage",
        "setMessage",
        "panGiven",
        "getPanGiven",
        "setPanGiven",
        "status",
        "getStatus",
        "setStatus",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private bureau:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "bureau"
    .end annotation
.end field

.field private cibilScore:I
    .annotation runtime Lo/computeStringSize;
        extraCallback = "credit_score"
    .end annotation
.end field

.field private creditScoreExist:Z
    .annotation runtime Lo/computeStringSize;
        extraCallback = "credit_score_exists"
    .end annotation
.end field

.field private dobGiven:Ljava/lang/Boolean;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "given_dob"
    .end annotation
.end field

.field private earnedPoints:J
    .annotation runtime Lo/computeStringSize;
        extraCallback = "earned_points"
    .end annotation
.end field

.field private message:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "message"
    .end annotation
.end field

.field private panGiven:Ljava/lang/Boolean;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "given_pan"
    .end annotation
.end field

.field private status:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "status"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBureau()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->bureau:Ljava/lang/String;

    return-object v0
.end method

.method public final getCibilScore()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->cibilScore:I

    return v0
.end method

.method public final getCreditScoreExist()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->creditScoreExist:Z

    return v0
.end method

.method public final getDobGiven()Ljava/lang/Boolean;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->dobGiven:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getEarnedPoints()J
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->earnedPoints:J

    return-wide v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getPanGiven()Ljava/lang/Boolean;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->panGiven:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final setBureau(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->bureau:Ljava/lang/String;

    return-void
.end method

.method public final setCibilScore(I)V
    .locals 0

    .line 18
    iput p1, p0, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->cibilScore:I

    return-void
.end method

.method public final setCreditScoreExist(Z)V
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->creditScoreExist:Z

    return-void
.end method

.method public final setDobGiven(Ljava/lang/Boolean;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->dobGiven:Ljava/lang/Boolean;

    return-void
.end method

.method public final setEarnedPoints(J)V
    .locals 0

    .line 15
    iput-wide p1, p0, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->earnedPoints:J

    return-void
.end method

.method public final setMessage(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->message:Ljava/lang/String;

    return-void
.end method

.method public final setPanGiven(Ljava/lang/Boolean;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->panGiven:Ljava/lang/Boolean;

    return-void
.end method

.method public final setStatus(Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->status:Ljava/lang/String;

    return-void
.end method
