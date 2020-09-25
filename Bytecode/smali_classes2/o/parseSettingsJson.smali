.class final Lo/parseSettingsJson;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/parseSettingsJson$onMessageChannelReady;
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback$Stub:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final ICustomTabsCallback:Ljava/lang/String;

.field private ICustomTabsService:Landroid/content/Context;

.field private final asBinder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/AppRequestData;",
            ">;"
        }
    .end annotation
.end field

.field private final asInterface:Lo/parseSettingsJson$onMessageChannelReady;

.field private final extraCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/AppRequestData;",
            ">;"
        }
    .end annotation
.end field

.field private newSession:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private onMessageChannelReady:Ljava/lang/String;

.field onNavigationEvent:Ljava/lang/Boolean;

.field private final onPostMessage:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final onRelationshipValidationResult:Lo/getSingleFileWithExtension;

.field private onTransact:Lorg/json/JSONArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 248
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lo/parseSettingsJson;->ICustomTabsCallback$Stub:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lo/parseSettingsJson$onMessageChannelReady;Lo/getSingleFileWithExtension;Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lo/parseSettingsJson$onMessageChannelReady;",
            "Lo/getSingleFileWithExtension;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lo/parseSettingsJson;->ICustomTabsService:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lo/parseSettingsJson;->ICustomTabsCallback:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lo/parseSettingsJson;->asInterface:Lo/parseSettingsJson$onMessageChannelReady;

    .line 28
    iput-object p4, p0, Lo/parseSettingsJson;->onRelationshipValidationResult:Lo/getSingleFileWithExtension;

    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lo/parseSettingsJson;->onMessageChannelReady:Ljava/lang/String;

    .line 31
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lo/parseSettingsJson;->extraCallback:Ljava/util/List;

    .line 32
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2, p5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lo/parseSettingsJson;->onPostMessage:Ljava/util/Set;

    .line 33
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lo/parseSettingsJson;->asBinder:Ljava/util/List;

    .line 34
    iput-object p1, p0, Lo/parseSettingsJson;->onTransact:Lorg/json/JSONArray;

    .line 35
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lo/parseSettingsJson;->newSession:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final declared-synchronized ICustomTabsCallback(Lo/buildInstanceIdentifierChanged$onPostMessage;Z)Lo/AppRequestData;
    .locals 7

    monitor-enter p0

    .line 187
    :try_start_0
    iget-object v0, p0, Lo/parseSettingsJson;->asBinder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "MixpanelAPI.DecideUpdts"

    const-string p2, "No unseen triggered notifications exist, none will be returned."

    .line 188
    invoke-static {p1, p2}, Lo/TrimmedThrowableData;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    monitor-exit p0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 191
    :goto_0
    :try_start_1
    iget-object v3, p0, Lo/parseSettingsJson;->asBinder:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 192
    iget-object v3, p0, Lo/parseSettingsJson;->asBinder:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/AppRequestData;

    .line 3184
    iget-object v4, v3, Lo/AppRequestData;->asBinder:Ljava/util/List;

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    iget-object v4, v3, Lo/AppRequestData;->asBinder:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_3

    .line 2189
    iget-object v4, v3, Lo/AppRequestData;->asBinder:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/getJsonTransformForVersion;

    .line 2190
    invoke-virtual {v6, p1}, Lo/getJsonTransformForVersion;->onNavigationEvent(Lo/buildInstanceIdentifierChanged$onPostMessage;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_5

    if-nez p2, :cond_4

    .line 195
    iget-object p2, p0, Lo/parseSettingsJson;->asBinder:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const-string p2, "MixpanelAPI.DecideUpdts"

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "recording triggered notification "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4138
    iget v1, v3, Lo/AppRequestData;->onNavigationEvent:I

    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " as seen "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4199
    iget-object p1, p1, Lo/buildInstanceIdentifierChanged$onPostMessage;->ICustomTabsCallback:Ljava/lang/String;

    .line 197
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 196
    invoke-static {p2, p1}, Lo/TrimmedThrowableData;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    :cond_4
    monitor-exit p0

    return-object v3

    :cond_5
    :try_start_2
    const-string v4, "MixpanelAPI.DecideUpdts"

    .line 201
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "triggered notification "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5138
    iget v3, v3, Lo/AppRequestData;->onNavigationEvent:I

    .line 201
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " does not match event "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5199
    iget-object v3, p1, Lo/buildInstanceIdentifierChanged$onPostMessage;->ICustomTabsCallback:Ljava/lang/String;

    .line 202
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 201
    invoke-static {v4, v3}, Lo/TrimmedThrowableData;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 205
    :cond_6
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized extraCallback()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 52
    :try_start_0
    iget-object v0, p0, Lo/parseSettingsJson;->onMessageChannelReady:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized extraCallback(Ljava/util/List;Ljava/util/List;Lorg/json/JSONArray;Lorg/json/JSONArray;ZLorg/json/JSONArray;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/AppRequestData;",
            ">;",
            "Ljava/util/List<",
            "Lo/AppRequestData;",
            ">;",
            "Lorg/json/JSONArray;",
            "Lorg/json/JSONArray;",
            "Z",
            "Lorg/json/JSONArray;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 62
    :try_start_0
    invoke-virtual {p4}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 65
    iget-object v1, p0, Lo/parseSettingsJson;->onRelationshipValidationResult:Lo/getSingleFileWithExtension;

    invoke-interface {v1, p3}, Lo/getSingleFileWithExtension;->onPostMessage(Lorg/json/JSONArray;)V

    .line 67
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/AppRequestData;

    .line 1138
    iget v5, v3, Lo/AppRequestData;->onNavigationEvent:I

    .line 69
    iget-object v6, p0, Lo/parseSettingsJson;->onPostMessage:Ljava/util/Set;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 70
    iget-object v2, p0, Lo/parseSettingsJson;->onPostMessage:Ljava/util/Set;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v2, p0, Lo/parseSettingsJson;->extraCallback:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto :goto_0

    .line 76
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/AppRequestData;

    .line 2138
    iget v3, p3, Lo/AppRequestData;->onNavigationEvent:I

    .line 78
    iget-object v5, p0, Lo/parseSettingsJson;->onPostMessage:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 79
    iget-object v2, p0, Lo/parseSettingsJson;->onPostMessage:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v2, p0, Lo/parseSettingsJson;->asBinder:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto :goto_1

    .line 87
    :cond_3
    iput-object p4, p0, Lo/parseSettingsJson;->onTransact:Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x0

    :goto_2
    if-ge p2, v0, :cond_5

    .line 91
    :try_start_1
    invoke-virtual {p4, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p3

    .line 92
    sget-object v3, Lo/parseSettingsJson;->ICustomTabsCallback$Stub:Ljava/util/Set;

    const-string v5, "id"

    invoke-virtual {p3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v3, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p3, :cond_4

    const/4 p2, 0x1

    const/4 v2, 0x1

    goto :goto_3

    :catch_0
    move-exception p3

    :try_start_2
    const-string v3, "MixpanelAPI.DecideUpdts"

    .line 98
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Could not convert variants["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] into a JSONObject while comparing the new variants"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, p3}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_5
    const/4 p2, 0x0

    :goto_3
    if-eqz p2, :cond_6

    .line 102
    iget-object p2, p0, Lo/parseSettingsJson;->onTransact:Lorg/json/JSONArray;

    if-eqz p2, :cond_6

    .line 103
    sget-object p2, Lo/parseSettingsJson;->ICustomTabsCallback$Stub:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p2, 0x0

    :goto_4
    if-ge p2, v0, :cond_6

    .line 107
    :try_start_3
    iget-object p3, p0, Lo/parseSettingsJson;->onTransact:Lorg/json/JSONArray;

    invoke-virtual {p3, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p3

    .line 108
    sget-object v3, Lo/parseSettingsJson;->ICustomTabsCallback$Stub:Ljava/util/Set;

    const-string v5, "id"

    invoke-virtual {p3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v3, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :catch_1
    move-exception p3

    :try_start_4
    const-string v3, "MixpanelAPI.DecideUpdts"

    .line 110
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Could not convert variants["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] into a JSONObject while updating the map"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, p3}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_6
    if-nez v0, :cond_7

    .line 117
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    iput-object p2, p0, Lo/parseSettingsJson;->onTransact:Lorg/json/JSONArray;

    .line 118
    sget-object p2, Lo/parseSettingsJson;->ICustomTabsCallback$Stub:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    if-lez p2, :cond_7

    .line 119
    sget-object p2, Lo/parseSettingsJson;->ICustomTabsCallback$Stub:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->clear()V

    const/4 v2, 0x1

    .line 123
    :cond_7
    iget-object p2, p0, Lo/parseSettingsJson;->onRelationshipValidationResult:Lo/getSingleFileWithExtension;

    iget-object p3, p0, Lo/parseSettingsJson;->onTransact:Lorg/json/JSONArray;

    invoke-interface {p2, p3}, Lo/getSingleFileWithExtension;->extraCallback(Lorg/json/JSONArray;)V

    .line 125
    iget-object p2, p0, Lo/parseSettingsJson;->onNavigationEvent:Ljava/lang/Boolean;

    if-nez p2, :cond_8

    if-nez p5, :cond_8

    .line 126
    iget-object p2, p0, Lo/parseSettingsJson;->ICustomTabsService:Landroid/content/Context;

    invoke-static {p2}, Lo/getSessionData;->ICustomTabsCallback(Landroid/content/Context;)Lo/getSessionData;

    move-result-object p2

    iget-object p3, p0, Lo/parseSettingsJson;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lo/getSessionData;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 128
    :cond_8
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lo/parseSettingsJson;->onNavigationEvent:Ljava/lang/Boolean;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p6, :cond_b

    .line 132
    :try_start_5
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 133
    :goto_6
    invoke-virtual {p6}, Lorg/json/JSONArray;->length()I

    move-result p3

    if-ge v1, p3, :cond_9

    .line 134
    invoke-virtual {p6, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 136
    :cond_9
    iget-object p3, p0, Lo/parseSettingsJson;->newSession:Ljava/util/Set;

    invoke-interface {p3, p2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    .line 137
    iput-object p2, p0, Lo/parseSettingsJson;->newSession:Ljava/util/Set;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_7

    :cond_a
    move v4, v2

    :goto_7
    move v2, v4

    goto :goto_8

    :catch_2
    move-exception p2

    :try_start_6
    const-string p3, "MixpanelAPI.DecideUpdts"

    .line 141
    new-instance p5, Ljava/lang/StringBuilder;

    const-string v0, "Got an integration id from "

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, " that wasn\'t an int"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p3, p5, p2}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b
    :goto_8
    const-string p2, "MixpanelAPI.DecideUpdts"

    .line 145
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p5, "New Decide content has become available. "

    invoke-direct {p3, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " notifications and "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {p4}, Lorg/json/JSONArray;->length()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " experiments have been added."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 145
    invoke-static {p2, p1}, Lo/TrimmedThrowableData;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_c

    .line 149
    iget-object p1, p0, Lo/parseSettingsJson;->asInterface:Lo/parseSettingsJson$onMessageChannelReady;

    if-eqz p1, :cond_c

    .line 150
    iget-object p1, p0, Lo/parseSettingsJson;->asInterface:Lo/parseSettingsJson$onMessageChannelReady;

    invoke-interface {p1}, Lo/parseSettingsJson$onMessageChannelReady;->onMessageChannelReady()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 152
    :cond_c
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onMessageChannelReady()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 208
    :try_start_0
    iget-object v0, p0, Lo/parseSettingsJson;->newSession:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onMessageChannelReady(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 45
    :try_start_0
    iget-object v0, p0, Lo/parseSettingsJson;->onMessageChannelReady:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/parseSettingsJson;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 46
    :cond_0
    iget-object v0, p0, Lo/parseSettingsJson;->extraCallback:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 48
    :cond_1
    iput-object p1, p0, Lo/parseSettingsJson;->onMessageChannelReady:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onMessageChannelReady(Lo/AppRequestData;)V
    .locals 1

    monitor-enter p0

    .line 213
    :try_start_0
    sget-boolean v0, Lo/SessionSettingsData;->onPostMessage:Z

    if-nez v0, :cond_2

    .line 6184
    iget-object v0, p1, Lo/AppRequestData;->asBinder:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lo/AppRequestData;->asBinder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lo/parseSettingsJson;->asBinder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 217
    :cond_1
    :try_start_1
    iget-object v0, p0, Lo/parseSettingsJson;->extraCallback:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onNavigationEvent(Z)Lo/AppRequestData;
    .locals 3

    monitor-enter p0

    .line 159
    :try_start_0
    iget-object v0, p0, Lo/parseSettingsJson;->extraCallback:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "MixpanelAPI.DecideUpdts"

    const-string v0, "No unseen notifications exist, none will be returned."

    .line 160
    invoke-static {p1, v0}, Lo/TrimmedThrowableData;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 161
    monitor-exit p0

    return-object p1

    .line 163
    :cond_0
    :try_start_1
    iget-object v0, p0, Lo/parseSettingsJson;->extraCallback:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/AppRequestData;

    if-eqz p1, :cond_1

    .line 165
    iget-object p1, p0, Lo/parseSettingsJson;->extraCallback:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string p1, "MixpanelAPI.DecideUpdts"

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Recording notification "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " as seen."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lo/TrimmedThrowableData;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onPostMessage()Lorg/json/JSONArray;
    .locals 1

    monitor-enter p0

    .line 155
    :try_start_0
    iget-object v0, p0, Lo/parseSettingsJson;->onTransact:Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
