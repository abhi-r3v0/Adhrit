.class public final Lo/ProcMapEntry;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ProcMapEntry$onNavigationEvent;
    }
.end annotation


# static fields
.field public static final FCM_WAKE_LOCK:Ljava/lang/String; = "wake:com.google.firebase.messaging"

.field public static final IPC_BUNDLE_KEY_SEND_ERROR:Ljava/lang/String; = "error"

.field public static final TAG:Ljava/lang/String; = "FirebaseMessaging"

.field public static final WAKE_LOCK_ACQUIRE_TIMEOUT_MILLIS:J


# instance fields
.field private final synthetic zzdd:Lo/deleteAllReports;

.field private final synthetic zzds:Lo/onCreateLoader;

.field private final synthetic zzdt:Lo/getColumnCount;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lo/ProcMapEntry;->WAKE_LOCK_ACQUIRE_TIMEOUT_MILLIS:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/deleteAllReports;Lo/getColumnCount;Lo/onCreateLoader;)V
    .locals 0

    .line 1001
    iput-object p1, p0, Lo/ProcMapEntry;->zzdd:Lo/deleteAllReports;

    iput-object p2, p0, Lo/ProcMapEntry;->zzdt:Lo/getColumnCount;

    iput-object p3, p0, Lo/ProcMapEntry;->zzds:Lo/onCreateLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1002
    iget-object v0, p0, Lo/ProcMapEntry;->zzdd:Lo/deleteAllReports;

    iget-object v1, p0, Lo/ProcMapEntry;->zzdt:Lo/getColumnCount;

    iget-object v2, p0, Lo/ProcMapEntry;->zzds:Lo/onCreateLoader;

    invoke-static {v0, v1, v2}, Lo/deleteAllReports;->zza(Lo/deleteAllReports;Lo/getColumnCount;Lo/onCreateLoader;)V

    return-void
.end method
