.class final Lcom/dreamplug/contacthelper/db/Database_Impl$2;
.super Lo/MediaSessionCompat$MediaSessionImplApi18$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dreamplug/contacthelper/db/Database_Impl;->onNavigationEvent(Lo/onAddQueueItem;)Lo/update;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lcom/dreamplug/contacthelper/db/Database_Impl;


# direct methods
.method constructor <init>(Lcom/dreamplug/contacthelper/db/Database_Impl;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/dreamplug/contacthelper/db/Database_Impl$2;->onNavigationEvent:Lcom/dreamplug/contacthelper/db/Database_Impl;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/MediaSessionCompat$MediaSessionImplApi18$onNavigationEvent;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/MediaControllerCompatApi21$Callback;)V
    .locals 2

    const-string v0, "DROP TABLE IF EXISTS `ContactEntity`"

    .line 42
    invoke-interface {p1, v0}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent(Ljava/lang/String;)V

    .line 43
    iget-object p1, p0, Lcom/dreamplug/contacthelper/db/Database_Impl$2;->onNavigationEvent:Lcom/dreamplug/contacthelper/db/Database_Impl;

    invoke-static {p1}, Lcom/dreamplug/contacthelper/db/Database_Impl;->ICustomTabsCallback(Lcom/dreamplug/contacthelper/db/Database_Impl;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 44
    iget-object v0, p0, Lcom/dreamplug/contacthelper/db/Database_Impl$2;->onNavigationEvent:Lcom/dreamplug/contacthelper/db/Database_Impl;

    invoke-static {v0}, Lcom/dreamplug/contacthelper/db/Database_Impl;->onMessageChannelReady(Lcom/dreamplug/contacthelper/db/Database_Impl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge p1, v0, :cond_0

    .line 45
    iget-object v1, p0, Lcom/dreamplug/contacthelper/db/Database_Impl$2;->onNavigationEvent:Lcom/dreamplug/contacthelper/db/Database_Impl;

    invoke-static {v1}, Lcom/dreamplug/contacthelper/db/Database_Impl;->extraCallback(Lcom/dreamplug/contacthelper/db/Database_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final extraCallback(Lo/MediaControllerCompatApi21$Callback;)V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/dreamplug/contacthelper/db/Database_Impl$2;->onNavigationEvent:Lcom/dreamplug/contacthelper/db/Database_Impl;

    invoke-static {v0, p1}, Lcom/dreamplug/contacthelper/db/Database_Impl;->onNavigationEvent(Lcom/dreamplug/contacthelper/db/Database_Impl;Lo/MediaControllerCompatApi21$Callback;)Lo/MediaControllerCompatApi21$Callback;

    .line 62
    iget-object v0, p0, Lcom/dreamplug/contacthelper/db/Database_Impl$2;->onNavigationEvent:Lcom/dreamplug/contacthelper/db/Database_Impl;

    invoke-static {v0, p1}, Lcom/dreamplug/contacthelper/db/Database_Impl;->onMessageChannelReady(Lcom/dreamplug/contacthelper/db/Database_Impl;Lo/MediaControllerCompatApi21$Callback;)V

    .line 63
    iget-object v0, p0, Lcom/dreamplug/contacthelper/db/Database_Impl$2;->onNavigationEvent:Lcom/dreamplug/contacthelper/db/Database_Impl;

    invoke-static {v0}, Lcom/dreamplug/contacthelper/db/Database_Impl;->asBinder(Lcom/dreamplug/contacthelper/db/Database_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 64
    iget-object v1, p0, Lcom/dreamplug/contacthelper/db/Database_Impl$2;->onNavigationEvent:Lcom/dreamplug/contacthelper/db/Database_Impl;

    invoke-static {v1}, Lcom/dreamplug/contacthelper/db/Database_Impl;->ICustomTabsCallback$Stub(Lcom/dreamplug/contacthelper/db/Database_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 65
    iget-object v2, p0, Lcom/dreamplug/contacthelper/db/Database_Impl$2;->onNavigationEvent:Lcom/dreamplug/contacthelper/db/Database_Impl;

    invoke-static {v2}, Lcom/dreamplug/contacthelper/db/Database_Impl;->onTransact(Lcom/dreamplug/contacthelper/db/Database_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/setCurrentControllerInfo$onPostMessage;

    invoke-virtual {v2, p1}, Lo/setCurrentControllerInfo$onPostMessage;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$Callback;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(Lo/MediaControllerCompatApi21$Callback;)V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/dreamplug/contacthelper/db/Database_Impl$2;->onNavigationEvent:Lcom/dreamplug/contacthelper/db/Database_Impl;

    invoke-static {v0}, Lcom/dreamplug/contacthelper/db/Database_Impl;->onPostMessage(Lcom/dreamplug/contacthelper/db/Database_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 53
    iget-object v1, p0, Lcom/dreamplug/contacthelper/db/Database_Impl$2;->onNavigationEvent:Lcom/dreamplug/contacthelper/db/Database_Impl;

    invoke-static {v1}, Lcom/dreamplug/contacthelper/db/Database_Impl;->onNavigationEvent(Lcom/dreamplug/contacthelper/db/Database_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 54
    iget-object v2, p0, Lcom/dreamplug/contacthelper/db/Database_Impl$2;->onNavigationEvent:Lcom/dreamplug/contacthelper/db/Database_Impl;

    invoke-static {v2}, Lcom/dreamplug/contacthelper/db/Database_Impl;->onRelationshipValidationResult(Lcom/dreamplug/contacthelper/db/Database_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/setCurrentControllerInfo$onPostMessage;

    invoke-virtual {v2, p1}, Lo/setCurrentControllerInfo$onPostMessage;->extraCallback(Lo/MediaControllerCompatApi21$Callback;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(Lo/MediaControllerCompatApi21$Callback;)Lo/MediaSessionCompat$MediaSessionImplApi18$extraCallback;
    .locals 12

    .line 81
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 82
    new-instance v1, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;

    const-string v3, "id"

    const-string v4, "TEXT"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance v1, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;

    const-string v4, "phone_number"

    const-string v5, "TEXT"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "phone_number"

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance v1, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;

    const-string v4, "first_name"

    const-string v5, "TEXT"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "first_name"

    invoke-virtual {v0, v3, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    new-instance v1, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;

    const-string v5, "last_name"

    const-string v6, "TEXT"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "last_name"

    invoke-virtual {v0, v3, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    new-instance v1, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;

    const-string v5, "client_contact_id"

    const-string v6, "TEXT"

    const/4 v7, 0x1

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "client_contact_id"

    invoke-virtual {v0, v3, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v1, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;

    const-string v5, "user_contact_id"

    const-string v6, "TEXT"

    const/4 v7, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "user_contact_id"

    invoke-virtual {v0, v4, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance v1, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;

    const-string v6, "display_order"

    const-string v7, "INTEGER"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "display_order"

    invoke-virtual {v0, v4, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    new-instance v1, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;

    const-string v6, "is_cred_user"

    const-string v7, "INTEGER"

    const/4 v8, 0x1

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "is_cred_user"

    invoke-virtual {v0, v4, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance v1, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;

    const-string v6, "is_deleted"

    const-string v7, "INTEGER"

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "is_deleted"

    invoke-virtual {v0, v4, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    new-instance v1, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;

    const-string v6, "is_synced_to_server"

    const-string v7, "INTEGER"

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "is_synced_to_server"

    invoke-virtual {v0, v4, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-instance v1, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;

    const-string v6, "last_modified"

    const-string v7, "INTEGER"

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "last_modified"

    invoke-virtual {v0, v4, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    new-instance v1, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;

    const-string v6, "is_suggested"

    const-string v7, "INTEGER"

    const/4 v8, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "is_suggested"

    invoke-virtual {v0, v4, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    new-instance v1, Ljava/util/HashSet;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 95
    new-instance v5, Ljava/util/HashSet;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 96
    new-instance v7, Lo/MediaSessionCompat$MediaSessionImplApi28$extraCallback;

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "index_ContactEntity_phone_number_client_contact_id"

    invoke-direct {v7, v3, v6, v2}, Lo/MediaSessionCompat$MediaSessionImplApi28$extraCallback;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v5, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v2, Lo/MediaSessionCompat$MediaSessionImplApi28;

    const-string v3, "ContactEntity"

    invoke-direct {v2, v3, v0, v1, v5}, Lo/MediaSessionCompat$MediaSessionImplApi28;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 1169
    invoke-static {p1, v3}, Lo/MediaSessionCompat$MediaSessionImplApi28;->onMessageChannelReady(Lo/MediaControllerCompatApi21$Callback;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 1170
    invoke-static {p1, v3}, Lo/MediaSessionCompat$MediaSessionImplApi28;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$Callback;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 1171
    invoke-static {p1, v3}, Lo/MediaSessionCompat$MediaSessionImplApi28;->onPostMessage(Lo/MediaControllerCompatApi21$Callback;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    .line 1172
    new-instance v5, Lo/MediaSessionCompat$MediaSessionImplApi28;

    invoke-direct {v5, v3, v0, v1, p1}, Lo/MediaSessionCompat$MediaSessionImplApi28;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 99
    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 100
    new-instance p1, Lo/MediaSessionCompat$MediaSessionImplApi18$extraCallback;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ContactEntity(com.dreamplug.contacthelper.db.ContactEntity).\n Expected:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n Found:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v4, v0}, Lo/MediaSessionCompat$MediaSessionImplApi18$extraCallback;-><init>(ZLjava/lang/String;)V

    return-object p1

    .line 104
    :cond_0
    new-instance p1, Lo/MediaSessionCompat$MediaSessionImplApi18$extraCallback;

    const/4 v0, 0x0

    invoke-direct {p1, v6, v0}, Lo/MediaSessionCompat$MediaSessionImplApi18$extraCallback;-><init>(ZLjava/lang/String;)V

    return-object p1
.end method

.method public final onPostMessage(Lo/MediaControllerCompatApi21$Callback;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS `ContactEntity` (`id` TEXT NOT NULL, `phone_number` TEXT NOT NULL, `first_name` TEXT NOT NULL, `last_name` TEXT, `client_contact_id` TEXT NOT NULL, `user_contact_id` TEXT, `display_order` INTEGER, `is_cred_user` INTEGER NOT NULL, `is_deleted` INTEGER NOT NULL, `is_synced_to_server` INTEGER NOT NULL, `last_modified` INTEGER NOT NULL, `is_suggested` INTEGER, PRIMARY KEY(`id`))"

    .line 34
    invoke-interface {p1, v0}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent(Ljava/lang/String;)V

    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS `index_ContactEntity_phone_number_client_contact_id` ON `ContactEntity` (`phone_number`, `client_contact_id`)"

    .line 35
    invoke-interface {p1, v0}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 36
    invoke-interface {p1, v0}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent(Ljava/lang/String;)V

    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'43932e02b1efe2b98c3723001dd72289\')"

    .line 37
    invoke-interface {p1, v0}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent(Ljava/lang/String;)V

    return-void
.end method

.method public final onTransact(Lo/MediaControllerCompatApi21$Callback;)V
    .locals 0

    .line 72
    invoke-static {p1}, Lo/onPlaybackPositionUpdate;->extraCallback(Lo/MediaControllerCompatApi21$Callback;)V

    return-void
.end method
