.class public abstract Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreModule;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback()Lo/aj;
    .locals 1

    .line 28
    sget-object v0, Lo/aj;->ICustomTabsCallback:Lo/aj;

    return-object v0
.end method

.method public static onMessageChannelReady()I
    .locals 1
    .annotation runtime Lo/currentString;
        extraCallback = "SCHEMA_VERSION"
    .end annotation

    .line 40
    sget v0, Lo/am;->onNavigationEvent:I

    return v0
.end method

.method public static onPostMessage()Ljava/lang/String;
    .locals 1
    .annotation runtime Lo/currentString;
        extraCallback = "SQLITE_DB_NAME"
    .end annotation

    const-string v0, "com.google.android.datatransport.events"

    return-object v0
.end method


# virtual methods
.method abstract onNavigationEvent(Lo/ak;)Lo/b$e;
.end method

.method abstract onPostMessage(Lo/ak;)Lo/ah;
.end method
