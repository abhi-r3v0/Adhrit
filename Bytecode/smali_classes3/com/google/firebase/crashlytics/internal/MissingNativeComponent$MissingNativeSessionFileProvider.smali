.class final Lcom/google/firebase/crashlytics/internal/MissingNativeComponent$MissingNativeSessionFileProvider;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/NativeSessionFileProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/MissingNativeComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MissingNativeSessionFileProvider"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/crashlytics/internal/MissingNativeComponent$1;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/MissingNativeComponent$MissingNativeSessionFileProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAppFile()Ljava/io/File;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getBinaryImagesFile()Ljava/io/File;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDeviceFile()Ljava/io/File;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMetadataFile()Ljava/io/File;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMinidumpFile()Ljava/io/File;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getOsFile()Ljava/io/File;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSessionFile()Ljava/io/File;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
