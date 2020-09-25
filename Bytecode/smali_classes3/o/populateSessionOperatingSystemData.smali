.class public abstract Lo/populateSessionOperatingSystemData;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/buildSingleThreadExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Exception;)Z
    .locals 0

    .line 27
    invoke-static {p0}, Lo/populateSessionOperatingSystemData;->isUnauthenticatedUsage(Ljava/lang/Exception;)Z

    move-result p0

    return p0
.end method

.method public static forAuthenticatedAccess(Lo/getNativeSessionFilesDir;)Lo/buildSingleThreadExecutorService;
    .locals 1

    .line 31
    new-instance v0, Lo/populateSessionOperatingSystemData$4;

    invoke-direct {v0, p0}, Lo/populateSessionOperatingSystemData$4;-><init>(Lo/getNativeSessionFilesDir;)V

    return-object v0
.end method

.method public static forUnauthenticatedAccess()Lo/buildSingleThreadExecutorService;
    .locals 1

    .line 68
    new-instance v0, Lo/populateSessionOperatingSystemData$1;

    invoke-direct {v0}, Lo/populateSessionOperatingSystemData$1;-><init>()V

    return-object v0
.end method

.method private static isUnauthenticatedUsage(Ljava/lang/Exception;)Z
    .locals 1

    .line 86
    instance-of v0, p0, Lcom/google/firebase/FirebaseApiNotAvailableException;

    if-nez v0, :cond_1

    instance-of p0, p0, Lcom/google/firebase/internal/api/FirebaseNoSignedInUserException;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
