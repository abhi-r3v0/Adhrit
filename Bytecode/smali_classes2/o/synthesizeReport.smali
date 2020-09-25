.class public Lo/synthesizeReport;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/synthesizeReport;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzeq:Ljava/lang/String;

.field private zzer:Z

.field private zzes:Lo/aY;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Lo/getAllFinalizedReportFiles;

    invoke-direct {v0}, Lo/getAllFinalizedReportFiles;-><init>()V

    sput-object v0, Lo/synthesizeReport;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lo/synthesizeReport;->zzer:Z

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lo/synthesizeReport;->zzeq:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lo/synthesizeReport;->zzer:Z

    .line 27
    const-class v0, Lo/aY;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lo/aY;

    iput-object p1, p0, Lo/synthesizeReport;->zzes:Lo/aY;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lo/getAllFinalizedReportFiles;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lo/synthesizeReport;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lo/b$a;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 17
    iput-boolean p2, p0, Lo/synthesizeReport;->zzer:Z

    .line 18
    iput-object p1, p0, Lo/synthesizeReport;->zzeq:Ljava/lang/String;

    .line 20
    new-instance p1, Lo/aY;

    invoke-direct {p1}, Lo/aY;-><init>()V

    .line 21
    iput-object p1, p0, Lo/synthesizeReport;->zzes:Lo/aY;

    return-void
.end method

.method public static zza(Ljava/util/List;)[Lo/ArticleListActivity$3;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/synthesizeReport;",
            ">;)[",
            "Lo/ArticleListActivity$3;"
        }
    .end annotation

    .line 39
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 42
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lo/ArticleListActivity$3;

    const/4 v1, 0x0

    .line 43
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/synthesizeReport;

    invoke-virtual {v2}, Lo/synthesizeReport;->zzcj()Lo/ArticleListActivity$3;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 45
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 46
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/synthesizeReport;

    invoke-virtual {v6}, Lo/synthesizeReport;->zzcj()Lo/ArticleListActivity$3;

    move-result-object v6

    if-nez v5, :cond_1

    .line 47
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/synthesizeReport;

    .line 48
    iget-boolean v7, v7, Lo/synthesizeReport;->zzer:Z

    if-eqz v7, :cond_1

    .line 51
    aput-object v6, v0, v1

    .line 52
    aput-object v2, v0, v4

    const/4 v5, 0x1

    goto :goto_1

    .line 53
    :cond_1
    aput-object v6, v0, v4

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-nez v5, :cond_3

    .line 56
    aput-object v2, v0, v1

    :cond_3
    return-object v0
.end method

.method public static zzcf()Lo/synthesizeReport;
    .locals 9

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\-"

    const-string v2, ""

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Lo/synthesizeReport;

    new-instance v2, Lo/b$a;

    invoke-direct {v2}, Lo/b$a;-><init>()V

    invoke-direct {v1, v0, v2}, Lo/synthesizeReport;-><init>(Ljava/lang/String;Lo/b$a;)V

    .line 5
    invoke-static {}, Lo/setPhone;->ICustomTabsCallback()Lo/setPhone;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Lo/setPhone;->onNavigationEvent()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 7
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    invoke-virtual {v2}, Lo/setPhone;->onTransact()F

    move-result v2

    float-to-double v2, v2

    cmpg-double v8, v6, v2

    if-gez v8, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 8
    :goto_0
    iput-boolean v2, v1, Lo/synthesizeReport;->zzer:Z

    .line 9
    invoke-static {}, Lo/b$b;->ICustomTabsCallback()Lo/b$b;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 11
    iget-boolean v6, v1, Lo/synthesizeReport;->zzer:Z

    if-eqz v6, :cond_1

    const-string v6, "Verbose"

    goto :goto_1

    :cond_1
    const-string v6, "Non Verbose"

    :goto_1
    aput-object v6, v3, v5

    aput-object v0, v3, v4

    const-string v0, "Creating a new %s Session: %s"

    .line 13
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-virtual {v2, v0}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isExpired()Z
    .locals 5

    .line 32
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lo/synthesizeReport;->zzes:Lo/aY;

    invoke-virtual {v1}, Lo/aY;->onNavigationEvent()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v0

    .line 33
    invoke-static {}, Lo/setPhone;->ICustomTabsCallback()Lo/setPhone;

    move-result-object v2

    invoke-virtual {v2}, Lo/setPhone;->newSession()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 59
    iget-object p2, p0, Lo/synthesizeReport;->zzeq:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-boolean p2, p0, Lo/synthesizeReport;->zzer:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 61
    iget-object p2, p0, Lo/synthesizeReport;->zzes:Lo/aY;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method

.method public final zzcg()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lo/synthesizeReport;->zzeq:Ljava/lang/String;

    return-object v0
.end method

.method public final zzch()Lo/aY;
    .locals 1

    .line 30
    iget-object v0, p0, Lo/synthesizeReport;->zzes:Lo/aY;

    return-object v0
.end method

.method public final zzci()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lo/synthesizeReport;->zzer:Z

    return v0
.end method

.method public final zzcj()Lo/ArticleListActivity$3;
    .locals 2

    .line 35
    invoke-static {}, Lo/ArticleListActivity$3;->onNavigationEvent()Lo/ArticleListActivity$3$onMessageChannelReady;

    move-result-object v0

    iget-object v1, p0, Lo/synthesizeReport;->zzeq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/ArticleListActivity$3$onMessageChannelReady;->extraCallback(Ljava/lang/String;)Lo/ArticleListActivity$3$onMessageChannelReady;

    move-result-object v0

    .line 36
    iget-boolean v1, p0, Lo/synthesizeReport;->zzer:Z

    if-eqz v1, :cond_0

    .line 37
    sget-object v1, Lo/ArticleListActivity$4;->extraCallback:Lo/ArticleListActivity$4;

    invoke-virtual {v0, v1}, Lo/ArticleListActivity$3$onMessageChannelReady;->onMessageChannelReady(Lo/ArticleListActivity$4;)Lo/ArticleListActivity$3$onMessageChannelReady;

    .line 38
    :cond_0
    invoke-virtual {v0}, Lo/fU$onNavigationEvent;->ICustomTabsService()Lo/aD;

    move-result-object v0

    check-cast v0, Lo/fU;

    check-cast v0, Lo/ArticleListActivity$3;

    return-object v0
.end method
