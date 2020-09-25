.class public final synthetic Lo/getFilesInDirectory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/doBackgroundInitializationAsync;


# static fields
.field public static final zzak:Lo/doBackgroundInitializationAsync;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/getFilesInDirectory;

    invoke-direct {v0}, Lo/getFilesInDirectory;-><init>()V

    sput-object v0, Lo/getFilesInDirectory;->zzak:Lo/doBackgroundInitializationAsync;

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
    new-instance v0, Lo/buildHttpRequest;

    const-class v1, Lcom/google/firebase/FirebaseApp;

    .line 3
    invoke-interface {p1, v1}, Lo/logException;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/FirebaseApp;

    const-class v2, Lo/FileStoreImpl;

    .line 4
    invoke-interface {p1, v2}, Lo/logException;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/FileStoreImpl;

    const-string v2, "fireperf"

    .line 5
    invoke-virtual {p1, v2}, Lo/FileStoreImpl;->get(Ljava/lang/String;)Lo/CrashlyticsReportPersistence$$Lambda$4;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lo/buildHttpRequest;-><init>(Lcom/google/firebase/FirebaseApp;Lo/CrashlyticsReportPersistence$$Lambda$4;)V

    return-object v0
.end method
