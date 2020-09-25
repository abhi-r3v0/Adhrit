.class public final Lo/onInstallConversionDataLoadedNative;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onInstallConversionDataLoadedNative$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Lo/onAppOpenAttributionNative;

.field final ICustomTabsCallback$Stub:Lo/onAppOpenAttributionNative;

.field final ICustomTabsService:Z

.field final asBinder:Lo/onAppOpenAttribution;

.field final asInterface:Ljava/lang/String;

.field public final extraCallback:Lo/onAppOpenAttributionNative;

.field final getInterfaceDescriptor:I

.field final onMessageChannelReady:Lo/onAppOpenAttributionNative;

.field final onNavigationEvent:Lo/getPathName;

.field final onPostMessage:Lo/onAppOpenAttribution;

.field final onRelationshipValidationResult:Lo/onAppOpenAttribution;

.field final onTransact:I

.field final warmup:Z


# direct methods
.method private constructor <init>(Lo/onInstallConversionDataLoadedNative$ICustomTabsCallback;)V
    .locals 11

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 46
    invoke-static {}, Lo/AFLogger$LogLevel;->extraCallback()Lo/onAppOpenAttributionNative;

    move-result-object p1

    .line 47
    iput-object p1, p0, Lo/onInstallConversionDataLoadedNative;->onMessageChannelReady:Lo/onAppOpenAttributionNative;

    .line 50
    invoke-static {}, Lo/isPermissionAvailable;->onPostMessage()Lo/isPermissionAvailable;

    move-result-object p1

    .line 51
    iput-object p1, p0, Lo/onInstallConversionDataLoadedNative;->onPostMessage:Lo/onAppOpenAttribution;

    .line 54
    invoke-static {}, Lo/getLevel;->ICustomTabsCallback()Lo/onAppOpenAttributionNative;

    move-result-object p1

    .line 55
    iput-object p1, p0, Lo/onInstallConversionDataLoadedNative;->extraCallback:Lo/onAppOpenAttributionNative;

    .line 58
    invoke-static {}, Lo/setPathData;->extraCallback()Lo/setPathData;

    move-result-object p1

    .line 59
    iput-object p1, p0, Lo/onInstallConversionDataLoadedNative;->onNavigationEvent:Lo/getPathName;

    .line 10025
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v0, 0x5

    const/16 v1, 0x400

    .line 10026
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x800

    .line 10027
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x1000

    .line 10028
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x2000

    .line 10029
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x4000

    .line 10030
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x8000

    .line 10031
    invoke-virtual {p1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v2, 0x10000

    .line 10032
    invoke-virtual {p1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v2, 0x20000

    .line 10033
    invoke-virtual {p1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v2, 0x2

    const/high16 v3, 0x40000

    .line 10034
    invoke-virtual {p1, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v3, 0x80000

    .line 10035
    invoke-virtual {p1, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v3, 0x100000

    .line 10036
    invoke-virtual {p1, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 10037
    new-instance v4, Lo/onAppOpenAttributionNative;

    .line 10046
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v5

    const-wide/32 v7, 0x7fffffff

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v6, v5

    const/high16 v5, 0x1000000

    if-ge v6, v5, :cond_0

    const/high16 v6, 0x300000

    goto :goto_0

    :cond_0
    const/high16 v9, 0x2000000

    if-ge v6, v9, :cond_1

    const/high16 v6, 0x600000

    goto :goto_0

    :cond_1
    const/high16 v6, 0xc00000

    .line 10061
    :goto_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v9

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v8, v7

    if-ge v8, v5, :cond_2

    .line 10063
    div-int/2addr v8, v2

    goto :goto_1

    .line 10065
    :cond_2
    div-int/lit8 v8, v8, 0x4

    mul-int/lit8 v8, v8, 0x3

    .line 10037
    :goto_1
    invoke-direct {v4, v6, v8, p1}, Lo/onAppOpenAttributionNative;-><init>(IILandroid/util/SparseIntArray;)V

    .line 63
    iput-object v4, p0, Lo/onInstallConversionDataLoadedNative;->ICustomTabsCallback:Lo/onAppOpenAttributionNative;

    .line 66
    invoke-static {}, Lo/isPermissionAvailable;->onPostMessage()Lo/isPermissionAvailable;

    move-result-object p1

    .line 67
    iput-object p1, p0, Lo/onInstallConversionDataLoadedNative;->asBinder:Lo/onAppOpenAttribution;

    .line 14032
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    .line 14033
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 14034
    new-instance v0, Lo/onAppOpenAttributionNative;

    const v1, 0x14000

    invoke-direct {v0, v1, v3, p1}, Lo/onAppOpenAttributionNative;-><init>(IILandroid/util/SparseIntArray;)V

    .line 71
    iput-object v0, p0, Lo/onInstallConversionDataLoadedNative;->ICustomTabsCallback$Stub:Lo/onAppOpenAttributionNative;

    .line 74
    invoke-static {}, Lo/isPermissionAvailable;->onPostMessage()Lo/isPermissionAvailable;

    move-result-object p1

    .line 75
    iput-object p1, p0, Lo/onInstallConversionDataLoadedNative;->onRelationshipValidationResult:Lo/onAppOpenAttribution;

    const-string p1, "legacy"

    .line 78
    iput-object p1, p0, Lo/onInstallConversionDataLoadedNative;->asInterface:Ljava/lang/String;

    const/4 p1, 0x0

    .line 79
    iput p1, p0, Lo/onInstallConversionDataLoadedNative;->onTransact:I

    const/high16 v0, 0x400000

    .line 82
    iput v0, p0, Lo/onInstallConversionDataLoadedNative;->getInterfaceDescriptor:I

    .line 84
    iput-boolean p1, p0, Lo/onInstallConversionDataLoadedNative;->warmup:Z

    .line 85
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 88
    iput-boolean p1, p0, Lo/onInstallConversionDataLoadedNative;->ICustomTabsService:Z

    return-void
.end method

.method public synthetic constructor <init>(Lo/onInstallConversionDataLoadedNative$ICustomTabsCallback;B)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lo/onInstallConversionDataLoadedNative;-><init>(Lo/onInstallConversionDataLoadedNative$ICustomTabsCallback;)V

    return-void
.end method
