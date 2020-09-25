.class public final synthetic Lo/extractFieldFromSystemFile;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/doBackgroundInitializationAsync;


# static fields
.field public static final zza:Lo/doBackgroundInitializationAsync;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/extractFieldFromSystemFile;

    invoke-direct {v0}, Lo/extractFieldFromSystemFile;-><init>()V

    sput-object v0, Lo/extractFieldFromSystemFile;->zza:Lo/doBackgroundInitializationAsync;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lo/logException;)Ljava/lang/Object;
    .locals 3

    .line 2
    const-class v0, Lcom/google/firebase/FirebaseApp;

    .line 3
    invoke-interface {p1, v0}, Lo/logException;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/FirebaseApp;

    const-class v1, Landroid/content/Context;

    .line 4
    invoke-interface {p1, v1}, Lo/logException;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionDeviceEncoder;

    .line 5
    invoke-interface {p1, v2}, Lo/logException;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionDeviceEncoder;

    .line 6
    invoke-static {v0, v1, p1}, Lo/populateTime;->getInstance(Lcom/google/firebase/FirebaseApp;Landroid/content/Context;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionDeviceEncoder;)Lo/convertLongToFourByteBuffer;

    move-result-object p1

    return-object p1
.end method
