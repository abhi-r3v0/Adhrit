.class public final Lo/MediaBrowserCompat$MediaBrowserImplApi21$7;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;
    }
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$google$firebase$database$core$operation$Operation$OperationType:[I


# instance fields
.field public onPostMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/setupAnimatorToVisibility;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1067
    invoke-static {}, Lo/getKeysFileForSession$ICustomTabsCallback;->values()[Lo/getKeysFileForSession$ICustomTabsCallback;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7;->$SwitchMap$com$google$firebase$database$core$operation$Operation$OperationType:[I

    :try_start_0
    sget-object v1, Lo/getKeysFileForSession$ICustomTabsCallback;->Overwrite:Lo/getKeysFileForSession$ICustomTabsCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7;->$SwitchMap$com$google$firebase$database$core$operation$Operation$OperationType:[I

    sget-object v1, Lo/getKeysFileForSession$ICustomTabsCallback;->Merge:Lo/getKeysFileForSession$ICustomTabsCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7;->$SwitchMap$com$google$firebase$database$core$operation$Operation$OperationType:[I

    sget-object v1, Lo/getKeysFileForSession$ICustomTabsCallback;->AckUserWrite:Lo/getKeysFileForSession$ICustomTabsCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7;->$SwitchMap$com$google$firebase$database$core$operation$Operation$OperationType:[I

    sget-object v1, Lo/getKeysFileForSession$ICustomTabsCallback;->ListenComplete:Lo/getKeysFileForSession$ICustomTabsCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1010
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1011
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7;->onPostMessage:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/graphics/Path;)V
    .locals 2

    .line 1018
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7;->onPostMessage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1019
    iget-object v1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7;->onPostMessage:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setupAnimatorToVisibility;

    invoke-static {p1, v1}, Lo/ActionBarOverlayLayout$LayoutParams;->ICustomTabsCallback(Landroid/graphics/Path;Lo/setupAnimatorToVisibility;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method
