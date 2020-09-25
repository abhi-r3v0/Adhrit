.class public Lo/isGooglePlayServicesAvailable;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/isGooglePlayServicesAvailable$onPostMessage;
    }
.end annotation


# static fields
.field private static volatile ICustomTabsCallback:Z = false

.field private static extraCallback:Z = true

.field private static final onMessageChannelReady:Lo/isGooglePlayServicesAvailable;

.field private static volatile onNavigationEvent:Lo/isGooglePlayServicesAvailable;

.field private static volatile onPostMessage:Lo/isGooglePlayServicesAvailable;


# instance fields
.field private final onRelationshipValidationResult:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/isGooglePlayServicesAvailable$onPostMessage;",
            "Lo/isPlayServicesPossiblyUpdating$onTransact<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Lo/isGooglePlayServicesAvailable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lo/isGooglePlayServicesAvailable;-><init>(Z)V

    sput-object v0, Lo/isGooglePlayServicesAvailable;->onMessageChannelReady:Lo/isGooglePlayServicesAvailable;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/isGooglePlayServicesAvailable;->onRelationshipValidationResult:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lo/isGooglePlayServicesAvailable;->onRelationshipValidationResult:Ljava/util/Map;

    return-void
.end method

.method public static onNavigationEvent()Lo/isGooglePlayServicesAvailable;
    .locals 2

    .line 3
    sget-object v0, Lo/isGooglePlayServicesAvailable;->onPostMessage:Lo/isGooglePlayServicesAvailable;

    if-nez v0, :cond_1

    .line 5
    const-class v1, Lo/isGooglePlayServicesAvailable;

    monitor-enter v1

    .line 6
    :try_start_0
    sget-object v0, Lo/isGooglePlayServicesAvailable;->onPostMessage:Lo/isGooglePlayServicesAvailable;

    if-nez v0, :cond_0

    .line 9
    sget-object v0, Lo/isGooglePlayServicesAvailable;->onMessageChannelReady:Lo/isGooglePlayServicesAvailable;

    sput-object v0, Lo/isGooglePlayServicesAvailable;->onPostMessage:Lo/isGooglePlayServicesAvailable;

    .line 10
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static onPostMessage()Lo/isGooglePlayServicesAvailable;
    .locals 2

    .line 12
    const-class v0, Lo/isGooglePlayServicesAvailable;

    sget-object v1, Lo/isGooglePlayServicesAvailable;->onNavigationEvent:Lo/isGooglePlayServicesAvailable;

    if-eqz v1, :cond_0

    return-object v1

    .line 15
    :cond_0
    monitor-enter v0

    .line 16
    :try_start_0
    sget-object v1, Lo/isGooglePlayServicesAvailable;->onNavigationEvent:Lo/isGooglePlayServicesAvailable;

    if-eqz v1, :cond_1

    .line 18
    monitor-exit v0

    return-object v1

    .line 20
    :cond_1
    invoke-static {v0}, Lo/isSidewinderDevice;->onNavigationEvent(Ljava/lang/Class;)Lo/isGooglePlayServicesAvailable;

    move-result-object v1

    .line 22
    sput-object v1, Lo/isGooglePlayServicesAvailable;->onNavigationEvent:Lo/isGooglePlayServicesAvailable;

    .line 23
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final onNavigationEvent(Lo/getStartServicePackage;I)Lo/isPlayServicesPossiblyUpdating$onTransact;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lo/getStartServicePackage;",
            ">(TContainingType;I)",
            "Lo/isPlayServicesPossiblyUpdating$onTransact<",
            "TContainingType;*>;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lo/isGooglePlayServicesAvailable;->onRelationshipValidationResult:Ljava/util/Map;

    new-instance v1, Lo/isGooglePlayServicesAvailable$onPostMessage;

    invoke-direct {v1, p1, p2}, Lo/isGooglePlayServicesAvailable$onPostMessage;-><init>(Ljava/lang/Object;I)V

    .line 26
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/isPlayServicesPossiblyUpdating$onTransact;

    return-object p1
.end method
