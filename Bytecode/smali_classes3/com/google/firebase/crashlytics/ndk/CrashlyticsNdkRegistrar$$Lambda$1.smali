.class final synthetic Lcom/google/firebase/crashlytics/ndk/CrashlyticsNdkRegistrar$$Lambda$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/doBackgroundInitializationAsync;


# instance fields
.field private final arg$1:Lcom/google/firebase/crashlytics/ndk/CrashlyticsNdkRegistrar;


# direct methods
.method private constructor <init>(Lcom/google/firebase/crashlytics/ndk/CrashlyticsNdkRegistrar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/ndk/CrashlyticsNdkRegistrar$$Lambda$1;->arg$1:Lcom/google/firebase/crashlytics/ndk/CrashlyticsNdkRegistrar;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/firebase/crashlytics/ndk/CrashlyticsNdkRegistrar;)Lo/doBackgroundInitializationAsync;
    .locals 1

    new-instance v0, Lcom/google/firebase/crashlytics/ndk/CrashlyticsNdkRegistrar$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/google/firebase/crashlytics/ndk/CrashlyticsNdkRegistrar$$Lambda$1;-><init>(Lcom/google/firebase/crashlytics/ndk/CrashlyticsNdkRegistrar;)V

    return-object v0
.end method


# virtual methods
.method public final create(Lo/logException;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/CrashlyticsNdkRegistrar$$Lambda$1;->arg$1:Lcom/google/firebase/crashlytics/ndk/CrashlyticsNdkRegistrar;

    invoke-static {v0, p1}, Lcom/google/firebase/crashlytics/ndk/CrashlyticsNdkRegistrar;->access$lambda$0(Lcom/google/firebase/crashlytics/ndk/CrashlyticsNdkRegistrar;Lo/logException;)Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;

    move-result-object p1

    return-object p1
.end method
