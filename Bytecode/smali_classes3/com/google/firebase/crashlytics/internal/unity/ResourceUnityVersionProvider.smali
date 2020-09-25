.class public Lcom/google/firebase/crashlytics/internal/unity/ResourceUnityVersionProvider;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/unity/UnityVersionProvider;


# instance fields
.field private final context:Landroid/content/Context;

.field private hasRead:Z

.field private unityVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/google/firebase/crashlytics/internal/unity/ResourceUnityVersionProvider;->hasRead:Z

    .line 28
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/unity/ResourceUnityVersionProvider;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getUnityVersion()Ljava/lang/String;
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/google/firebase/crashlytics/internal/unity/ResourceUnityVersionProvider;->hasRead:Z

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/unity/ResourceUnityVersionProvider;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->resolveUnityEditorVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/unity/ResourceUnityVersionProvider;->unityVersion:Ljava/lang/String;

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/google/firebase/crashlytics/internal/unity/ResourceUnityVersionProvider;->hasRead:Z

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/unity/ResourceUnityVersionProvider;->unityVersion:Ljava/lang/String;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
