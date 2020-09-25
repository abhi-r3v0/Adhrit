.class public abstract Lo/getLanguage;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private ICustomTabsCallback:Z

.field extraCallback:I

.field onNavigationEvent:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 8
    iput v0, p0, Lo/getLanguage;->extraCallback:I

    const v0, 0x7fffffff

    .line 9
    iput v0, p0, Lo/getLanguage;->onNavigationEvent:I

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lo/getLanguage;->ICustomTabsCallback:Z

    return-void
.end method

.method synthetic constructor <init>(Lo/getRegion;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lo/getLanguage;-><init>()V

    return-void
.end method

.method static onMessageChannelReady([BIIZ)Lo/getLanguage;
    .locals 6

    .line 1
    new-instance p1, Lo/getScript;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lo/getScript;-><init>([BIIZLo/getRegion;)V

    .line 2
    :try_start_0
    invoke-virtual {p1, p2}, Lo/getLanguage;->extraCallback(I)I
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase_auth/zzir; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public abstract extraCallback(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase_auth/zzir;
        }
    .end annotation
.end method

.method public abstract onNavigationEvent()I
.end method
