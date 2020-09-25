.class public final Lo/MediaBrowserCompat$MediaBrowserImplApi23;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;,
        Lo/MediaBrowserCompat$MediaBrowserImplApi23$onNavigationEvent;,
        Lo/MediaBrowserCompat$MediaBrowserImplApi23$ICustomTabsCallback;,
        Lo/MediaBrowserCompat$MediaBrowserImplApi23$extraCallback;,
        Lo/MediaBrowserCompat$MediaBrowserImplApi23$onPostMessage;,
        Lo/MediaBrowserCompat$MediaBrowserImplApi23$onTransact;,
        Lo/MediaBrowserCompat$MediaBrowserImplApi23$asBinder;
    }
.end annotation


# static fields
.field public static final onNavigationEvent:Ljava/util/concurrent/Executor;

.field public static final onRelationshipValidationResult:Ljava/util/concurrent/Executor;


# instance fields
.field public final ICustomTabsCallback:Lo/postOrRun;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/postOrRun<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final extraCallback:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final onMessageChannelReady:Lo/postOrRun;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/postOrRun<",
            "Landroid/view/View;",
            "Lo/MediaSessionCompat$ResultReceiverWrapper;",
            ">;"
        }
    .end annotation
.end field

.field public final onPostMessage:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2000
    new-instance v0, Lo/getFarmTitle;

    invoke-direct {v0}, Lo/getFarmTitle;-><init>()V

    sput-object v0, Lo/MediaBrowserCompat$MediaBrowserImplApi23;->onNavigationEvent:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;-><init>()V

    sput-object v0, Lo/MediaBrowserCompat$MediaBrowserImplApi23;->onRelationshipValidationResult:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1025
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1027
    new-instance v0, Lo/postOrRun;

    invoke-direct {v0}, Lo/postOrRun;-><init>()V

    iput-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi23;->onMessageChannelReady:Lo/postOrRun;

    .line 1029
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi23;->extraCallback:Landroid/util/SparseArray;

    .line 1031
    new-instance v0, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    invoke-direct {v0}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;-><init>()V

    iput-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi23;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    .line 1033
    new-instance v0, Lo/postOrRun;

    invoke-direct {v0}, Lo/postOrRun;-><init>()V

    iput-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi23;->ICustomTabsCallback:Lo/postOrRun;

    return-void
.end method
