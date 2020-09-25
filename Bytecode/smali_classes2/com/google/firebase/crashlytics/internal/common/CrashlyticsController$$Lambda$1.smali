.class final synthetic Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$$Lambda$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/FilenameFilter;


# static fields
.field private static final instance:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$$Lambda$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$$Lambda$1;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$$Lambda$1;-><init>()V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$$Lambda$1;->instance:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$$Lambda$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava/io/FilenameFilter;
    .locals 1

    sget-object v0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$$Lambda$1;->instance:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$$Lambda$1;

    return-object v0
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->lambda$static$0(Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
