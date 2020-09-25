.class final Lo/getRccStateFromState;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MediaControllerCompatApi21$Callback;


# static fields
.field private static final onPostMessage:[Ljava/lang/String;


# instance fields
.field final onMessageChannelReady:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, ""

    const-string v1, " OR ROLLBACK "

    const-string v2, " OR ABORT "

    const-string v3, " OR FAIL "

    const-string v4, " OR IGNORE "

    const-string v5, " OR REPLACE "

    .line 47
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 49
    sput-object v0, Lo/getRccStateFromState;->onPostMessage:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lo/getRccStateFromState;->onMessageChannelReady:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4

    .line 150
    new-instance v0, Lo/IPostMessageService;

    invoke-direct {v0, p1}, Lo/IPostMessageService;-><init>(Ljava/lang/String;)V

    .line 1161
    iget-object p1, p0, Lo/getRccStateFromState;->onMessageChannelReady:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Lo/getRccStateFromState$3;

    invoke-direct {v1, p0, v0}, Lo/getRccStateFromState$3;-><init>(Lo/getRccStateFromState;Landroidx/preference/PreferenceGroup$onMessageChannelReady;)V

    .line 1168
    invoke-interface {v0}, Landroidx/preference/PreferenceGroup$onMessageChannelReady;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lo/getRccStateFromState;->onPostMessage:[Ljava/lang/String;

    const/4 v3, 0x0

    .line 1161
    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public final ICustomTabsCallback()V
    .locals 1

    .line 90
    iget-object v0, p0, Lo/getRccStateFromState;->onMessageChannelReady:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method public final asInterface()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lo/getRccStateFromState;->onMessageChannelReady:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getAttachedDbs()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lo/getRccStateFromState;->onMessageChannelReady:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public final extraCallback()V
    .locals 1

    .line 95
    iget-object v0, p0, Lo/getRccStateFromState;->onMessageChannelReady:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    return-void
.end method

.method public final extraCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lo/getRccStateFromState;->onMessageChannelReady:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onMessageChannelReady()Z
    .locals 1

    .line 257
    iget-object v0, p0, Lo/getRccStateFromState;->onMessageChannelReady:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    return v0
.end method

.method public final onNavigationEvent()V
    .locals 1

    .line 69
    iget-object v0, p0, Lo/getRccStateFromState;->onMessageChannelReady:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lo/getRccStateFromState;->onMessageChannelReady:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public final onPostMessage(Landroidx/preference/PreferenceGroup$onMessageChannelReady;)Landroid/database/Cursor;
    .locals 4

    .line 161
    iget-object v0, p0, Lo/getRccStateFromState;->onMessageChannelReady:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Lo/getRccStateFromState$3;

    invoke-direct {v1, p0, p1}, Lo/getRccStateFromState$3;-><init>(Lo/getRccStateFromState;Landroidx/preference/PreferenceGroup$onMessageChannelReady;)V

    .line 168
    invoke-interface {p1}, Landroidx/preference/PreferenceGroup$onMessageChannelReady;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lo/getRccStateFromState;->onPostMessage:[Ljava/lang/String;

    const/4 v3, 0x0

    .line 161
    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage(Ljava/lang/String;)Lo/getDrawerToggleDelegate$onNavigationEvent;
    .locals 2

    .line 64
    new-instance v0, Lo/sendState;

    iget-object v1, p0, Lo/getRccStateFromState;->onMessageChannelReady:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    invoke-direct {v0, p1}, Lo/sendState;-><init>(Landroid/database/sqlite/SQLiteStatement;)V

    return-object v0
.end method

.method public final onPostMessage()Z
    .locals 1

    .line 100
    iget-object v0, p0, Lo/getRccStateFromState;->onMessageChannelReady:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    return v0
.end method

.method public final onRelationshipValidationResult()Ljava/lang/String;
    .locals 1

    .line 267
    iget-object v0, p0, Lo/getRccStateFromState;->onMessageChannelReady:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
