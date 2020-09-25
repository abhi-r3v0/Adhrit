.class final Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/ndk/SessionFiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private app:Ljava/io/File;

.field private binaryImages:Ljava/io/File;

.field private device:Ljava/io/File;

.field private metadata:Ljava/io/File;

.field private minidump:Ljava/io/File;

.field private os:Ljava/io/File;

.field private session:Ljava/io/File;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;)Ljava/io/File;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;->minidump:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;)Ljava/io/File;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;->binaryImages:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;)Ljava/io/File;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;->metadata:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;)Ljava/io/File;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;->session:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;)Ljava/io/File;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;->app:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;)Ljava/io/File;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;->device:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$700(Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;)Ljava/io/File;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;->os:Ljava/io/File;

    return-object p0
.end method


# virtual methods
.method final appFile(Ljava/io/File;)Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;->app:Ljava/io/File;

    return-object p0
.end method

.method final binaryImagesFile(Ljava/io/File;)Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;->binaryImages:Ljava/io/File;

    return-object p0
.end method

.method final build()Lcom/google/firebase/crashlytics/ndk/SessionFiles;
    .locals 2

    .line 66
    new-instance v0, Lcom/google/firebase/crashlytics/ndk/SessionFiles;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/crashlytics/ndk/SessionFiles;-><init>(Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;Lcom/google/firebase/crashlytics/ndk/SessionFiles$1;)V

    return-object v0
.end method

.method final deviceFile(Ljava/io/File;)Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;->device:Ljava/io/File;

    return-object p0
.end method

.method final metadataFile(Ljava/io/File;)Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;->metadata:Ljava/io/File;

    return-object p0
.end method

.method final minidumpFile(Ljava/io/File;)Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;->minidump:Ljava/io/File;

    return-object p0
.end method

.method final osFile(Ljava/io/File;)Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;->os:Ljava/io/File;

    return-object p0
.end method

.method final sessionFile(Ljava/io/File;)Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;->session:Ljava/io/File;

    return-object p0
.end method
