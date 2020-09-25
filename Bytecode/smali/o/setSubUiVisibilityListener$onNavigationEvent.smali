.class public final Lo/setSubUiVisibilityListener$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;
.implements Lo/setChildInsets;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setSubUiVisibilityListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J \u0010\u0006\u001a\u00020\u00032\u0016\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\t0\u0008j\u0008\u0012\u0004\u0012\u00020\t`\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/dreamplug/contacthelper/ContactHelper$pullDelta$1$1",
        "Lcom/dreamplug/contacthelper/listeners/OnPullCallback;",
        "onPermissionMissing",
        "",
        "permission",
        "",
        "onReady",
        "entities",
        "Ljava/util/ArrayList;",
        "Lcom/dreamplug/contacthelper/db/ContactEntity;",
        "Lkotlin/collections/ArrayList;",
        "contact_helper_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic extraCallback:Lo/setChildInsets;

.field final synthetic onMessageChannelReady:Lo/setSubUiVisibilityListener;


# direct methods
.method public constructor <init>(Lo/setSubUiVisibilityListener;Lo/setChildInsets;)V
    .locals 0

    iput-object p1, p0, Lo/setSubUiVisibilityListener$onNavigationEvent;->onMessageChannelReady:Lo/setSubUiVisibilityListener;

    iput-object p2, p0, Lo/setSubUiVisibilityListener$onNavigationEvent;->extraCallback:Lo/setChildInsets;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;)V
    .locals 1

    const-string v0, "permission"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5042
    iget-object v0, p0, Lo/setSubUiVisibilityListener$onNavigationEvent;->extraCallback:Lo/setChildInsets;

    invoke-interface {v0, p1}, Lo/setChildInsets;->ICustomTabsCallback(Ljava/lang/String;)V

    return-void
.end method

.method public final onNavigationEvent(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lo/setFillViewport;",
            ">;)V"
        }
    .end annotation

    const-string v0, "entities"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5046
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lo/refreshVisibility;

    invoke-direct {v1, p0, p1}, Lo/refreshVisibility;-><init>(Lo/setSubUiVisibilityListener$onNavigationEvent;Ljava/util/ArrayList;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 5050
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final run()V
    .locals 25

    move-object/from16 v1, p0

    const-string v0, "nativePattern.matcher(in\u2026).replaceAll(replacement)"

    const-string v2, "replacement"

    const-string v3, "input"

    const-string v4, ""

    const-string v5, "contacts-sdk"

    const-string v6, "contact delta pull requested"

    .line 39
    invoke-static {v5, v6}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v6, v1, Lo/setSubUiVisibilityListener$onNavigationEvent;->onMessageChannelReady:Lo/setSubUiVisibilityListener;

    invoke-static {v6}, Lo/setSubUiVisibilityListener;->ICustomTabsCallback(Lo/setSubUiVisibilityListener;)Lo/getTextOn;

    move-result-object v6

    iget-object v7, v1, Lo/setSubUiVisibilityListener$onNavigationEvent;->onMessageChannelReady:Lo/setSubUiVisibilityListener;

    invoke-static {v7}, Lo/setSubUiVisibilityListener;->onPostMessage(Lo/setSubUiVisibilityListener;)Landroid/content/Context;

    move-result-object v7

    move-object v8, v1

    check-cast v8, Lo/setChildInsets;

    const-string v9, "context"

    invoke-static {v7, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "listener"

    invoke-static {v8, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "android.permission.READ_CONTACTS"

    .line 1027
    invoke-static {v7, v9}, Lo/fromParcel;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_0

    .line 1028
    invoke-interface {v8, v9}, Lo/setChildInsets;->ICustomTabsCallback(Ljava/lang/String;)V

    const-string v0, "contact permission missing"

    .line 1029
    invoke-static {v5, v0}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1033
    :cond_0
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 1036
    :try_start_0
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 1037
    sget-object v11, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    iget-object v12, v6, Lo/getTextOn;->ICustomTabsCallback:[Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v15, "contact_id"

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_6

    check-cast v6, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v7, v6

    check-cast v7, Landroid/database/Cursor;

    const-string v10, "contact_id"

    .line 1038
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "display_name"

    .line 1039
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v12, "data1"

    .line 1040
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v13, "contact_last_updated_timestamp"

    .line 1041
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 1047
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 1048
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1049
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getType(I)I

    move-result v14

    const/4 v1, 0x3

    if-ne v14, v1, :cond_1

    .line 1050
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1052
    :cond_1
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getType(I)I

    move-result v14

    if-ne v14, v1, :cond_2

    .line 1053
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v14, "cursor.getString(numberIndex)"

    invoke-static {v1, v14}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    const-string v14, "[^+0-9 ]"

    move/from16 v24, v10

    new-instance v10, Lo/queryForTag;

    invoke-direct {v10, v14}, Lo/queryForTag;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1143
    iget-object v10, v10, Lo/queryForTag;->onPostMessage:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1053
    check-cast v1, Ljava/lang/CharSequence;

    const-string v10, " "

    new-instance v14, Lo/queryForTag;

    invoke-direct {v14, v10}, Lo/queryForTag;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2143
    iget-object v10, v14, Lo/queryForTag;->onPostMessage:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v16, v1

    goto :goto_1

    :cond_2
    move/from16 v24, v10

    .line 1055
    :goto_1
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    if-eqz v19, :cond_3

    if-eqz v15, :cond_3

    if-eqz v16, :cond_3

    .line 1068
    new-instance v1, Lo/setVisibilityListener;

    move-object/from16 v18, v1

    move-object/from16 v20, v15

    move-object/from16 v21, v16

    invoke-direct/range {v18 .. v23}, Lo/setVisibilityListener;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v9, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object/from16 v1, p0

    move/from16 v10, v24

    goto :goto_0

    .line 1071
    :cond_4
    move-object v0, v9

    check-cast v0, Ljava/lang/Iterable;

    .line 1100
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setVisibilityListener;

    .line 1072
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3003
    iget-object v3, v1, Lo/setVisibilityListener;->onPostMessage:Ljava/lang/String;

    .line 1072
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4003
    iget-object v4, v1, Lo/setVisibilityListener;->extraCallback:Ljava/lang/String;

    .line 1072
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5003
    iget-object v1, v1, Lo/setVisibilityListener;->onNavigationEvent:Ljava/lang/String;

    .line 1072
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1074
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1075
    new-instance v0, Ljava/util/ArrayList;

    check-cast v9, Ljava/util/Collection;

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lo/extraCallback;->ICustomTabsCallback(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v8, v0}, Lo/setChildInsets;->onNavigationEvent(Ljava/util/ArrayList;)V

    .line 1076
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .line 1037
    :try_start_2
    invoke-static {v6, v0}, Lo/extraCallback;->onNavigationEvent(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_4
    invoke-static {v6, v1}, Lo/extraCallback;->onNavigationEvent(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_6
    return-void

    :catch_0
    move-exception v0

    .line 1078
    sget-object v1, Lo/merge;->extraCallback:Lo/merge;

    check-cast v0, Ljava/lang/Throwable;

    const-string/jumbo v1, "throwable"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5023
    sget-object v1, Lo/merge;->onPostMessage:Lo/findSameItem;

    if-eqz v1, :cond_7

    invoke-interface {v1, v0}, Lo/findSameItem;->onPostMessage(Ljava/lang/Throwable;)V

    :cond_7
    return-void
.end method
