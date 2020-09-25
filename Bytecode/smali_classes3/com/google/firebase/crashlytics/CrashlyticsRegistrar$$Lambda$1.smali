.class final synthetic Lcom/google/firebase/crashlytics/CrashlyticsRegistrar$$Lambda$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/doBackgroundInitializationAsync;


# instance fields
.field private final arg$1:Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;


# direct methods
.method private constructor <init>(Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar$$Lambda$1;->arg$1:Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;)Lo/doBackgroundInitializationAsync;
    .locals 1

    new-instance v0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar$$Lambda$1;-><init>(Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;)V

    return-object v0
.end method


# virtual methods
.method public final create(Lo/logException;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar$$Lambda$1;->arg$1:Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;

    invoke-static {v0, p1}, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->access$lambda$0(Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;Lo/logException;)Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p1

    return-object p1
.end method
