.class final Lo/sendVolumeInfoChanged$onNavigationEvent$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/sendVolumeInfoChanged$onNavigationEvent;-><init>(Landroid/content/Context;Ljava/lang/String;[Lo/getRccStateFromState;Lo/update$onPostMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic extraCallback:Lo/update$onPostMessage;

.field final synthetic onPostMessage:[Lo/getRccStateFromState;


# direct methods
.method constructor <init>(Lo/update$onPostMessage;[Lo/getRccStateFromState;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lo/sendVolumeInfoChanged$onNavigationEvent$5;->extraCallback:Lo/update$onPostMessage;

    iput-object p2, p0, Lo/sendVolumeInfoChanged$onNavigationEvent$5;->onPostMessage:[Lo/getRccStateFromState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 136
    iget-object v0, p0, Lo/sendVolumeInfoChanged$onNavigationEvent$5;->onPostMessage:[Lo/getRccStateFromState;

    const/4 v1, 0x0

    .line 1207
    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    .line 1322
    iget-object v2, v2, Lo/getRccStateFromState;->onMessageChannelReady:Landroid/database/sqlite/SQLiteDatabase;

    if-ne v2, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    .line 1209
    :cond_1
    new-instance v2, Lo/getRccStateFromState;

    invoke-direct {v2, p1}, Lo/getRccStateFromState;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    aput-object v2, v0, v1

    .line 1211
    :cond_2
    aget-object p1, v0, v1

    .line 2236
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Corruption reported by sqlite on database: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lo/MediaControllerCompatApi21$Callback;->onRelationshipValidationResult()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SupportSQLite"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2238
    invoke-interface {p1}, Lo/MediaControllerCompatApi21$Callback;->onMessageChannelReady()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2245
    invoke-interface {p1}, Lo/MediaControllerCompatApi21$Callback;->onRelationshipValidationResult()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/update$onPostMessage;->onPostMessage(Ljava/lang/String;)V

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 2254
    :try_start_0
    invoke-interface {p1}, Lo/MediaControllerCompatApi21$Callback;->asInterface()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    .line 2259
    :catch_0
    :goto_1
    :try_start_1
    invoke-interface {p1}, Lo/MediaControllerCompatApi21$Callback;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_2
    if-eqz v0, :cond_4

    .line 2266
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 2267
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lo/update$onPostMessage;->onPostMessage(Ljava/lang/String;)V

    goto :goto_3

    .line 2272
    :cond_4
    invoke-interface {p1}, Lo/MediaControllerCompatApi21$Callback;->onRelationshipValidationResult()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/update$onPostMessage;->onPostMessage(Ljava/lang/String;)V

    .line 2274
    :cond_5
    throw v1

    :catch_1
    nop

    :goto_4
    if-eqz v0, :cond_7

    .line 2266
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 2267
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lo/update$onPostMessage;->onPostMessage(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    return-void

    .line 2272
    :cond_7
    invoke-interface {p1}, Lo/MediaControllerCompatApi21$Callback;->onRelationshipValidationResult()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/update$onPostMessage;->onPostMessage(Ljava/lang/String;)V

    return-void
.end method
