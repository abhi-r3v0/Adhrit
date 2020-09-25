.class public final Lo/RecyclerView$SmoothScroller$ScrollVectorProvider;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000V\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001aN\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0010\u0008\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0013H\u0002\u001a4\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0002\u001aH\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0010\u0008\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0013\u001a \u0010\u0019\u001a\u00020\u00102\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u00012\u0006\u0010\u001b\u001a\u00020\u0001\u001a:\u0010\u001c\u001a\u00020\u00072\u0016\u0010\u001d\u001a\u0012\u0012\u0004\u0012\u00020\u00030\u001ej\u0008\u0012\u0004\u0012\u00020\u0003`\u001f2\u0006\u0010 \u001a\u00020\u00102\u0010\u0008\u0002\u0010!\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0013H\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082D\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0082D\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "BATCH_SIZE",
        "",
        "SORT_ORDER",
        "",
        "gson",
        "Lcom/google/gson/Gson;",
        "getAllSms",
        "",
        "context",
        "Landroid/content/Context;",
        "source",
        "Lcom/dreamplug/river/RiverManager$Source;",
        "from",
        "",
        "to",
        "isCustom",
        "",
        "lastBiggestId",
        "onParsingDone",
        "Lkotlin/Function0;",
        "getCursor",
        "Landroid/database/Cursor;",
        "message",
        "Landroid/net/Uri;",
        "getSms",
        "isItImmediate",
        "batchCount",
        "totalBatches",
        "sendListToBatcher",
        "lstSms",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "isImmediate",
        "onBatchCreated",
        "river_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final onMessageChannelReady:Ljava/lang/String; = "date ASC"

.field private static final onPostMessage:Lo/writeStringNoTag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lo/writeStringNoTag;

    invoke-direct {v0}, Lo/writeStringNoTag;-><init>()V

    sput-object v0, Lo/RecyclerView$SmoothScroller$ScrollVectorProvider;->onPostMessage:Lo/writeStringNoTag;

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Landroid/content/Context;Lo/isPendingInitialRun$ICustomTabsCallback;JJZJLo/getServerTime;)V
    .locals 45

    move-object/from16 v0, p1

    .line 1070
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x2

    new-array v1, v7, [Ljava/lang/String;

    .line 1169
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    aput-object v3, v1, v8

    .line 1170
    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x1

    aput-object v3, v1, v9

    .line 1168
    invoke-static {v1}, Lo/getSessionPersistenceKey;->extraCallback([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1172
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "LENGTH(address) < 10 AND ((date > ? AND date <= ?) "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    cmp-long v6, p7, v4

    if-ltz v6, :cond_0

    .line 1175
    invoke-static/range {p7 .. p8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    const-string v4, " OR _id > ?)"

    goto :goto_0

    :cond_0
    const-string v4, ")"

    .line 1174
    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1180
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1183
    check-cast v1, Ljava/util/Collection;

    new-array v5, v8, [Ljava/lang/String;

    .line 1219
    invoke-interface {v1, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1a

    const/4 v5, 0x0

    move-object v6, v1

    check-cast v6, [Ljava/lang/String;

    .line 1184
    sget-object v10, Lo/RecyclerView$SmoothScroller$ScrollVectorProvider;->onMessageChannelReady:Ljava/lang/String;

    move-object v1, v3

    move-object v3, v5

    move-object v5, v6

    move-object v6, v10

    .line 1180
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 1075
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    int-to-double v3, v2

    const-wide/high16 v5, 0x4049000000000000L    # 50.0

    div-double/2addr v3, v5

    .line 1076
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    const-string v4, "pairs"

    const-string v5, "count"

    const-string/jumbo v6, "source"

    if-lez v2, :cond_1

    const/4 v10, 0x3

    new-array v11, v10, [Lo/addWrite;

    .line 1079
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 2043
    new-instance v12, Lo/addWrite;

    invoke-direct {v12, v5, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v12, v11, v8

    .line 1080
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 3043
    new-instance v12, Lo/addWrite;

    const-string/jumbo v13, "totalBatchCount"

    invoke-direct {v12, v13, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v12, v11, v9

    .line 1081
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4043
    new-instance v12, Lo/addWrite;

    invoke-direct {v12, v6, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v12, v11, v7

    .line 1078
    invoke-static {v11, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4105
    new-instance v2, Ljava/util/HashMap;

    invoke-static {v10}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v10

    invoke-direct {v2, v10}, Ljava/util/HashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v11}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v10, "SMS_processed"

    .line 1078
    invoke-static {v10, v2}, Lo/replaceAll;->onMessageChannelReady(Ljava/lang/String;Ljava/util/Map;)V

    .line 1085
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1086
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1087
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1088
    sget-object v12, Lo/setTargetPosition;->onRelationshipValidationResult:Lo/setTargetPosition;

    invoke-virtual {v12}, Lo/setTargetPosition;->ICustomTabsCallback()J

    move-result-wide v12

    .line 1089
    sget-object v14, Lo/setTargetPosition;->onRelationshipValidationResult:Lo/setTargetPosition;

    .line 5000
    sget-object v14, Lo/setTargetPosition;->asInterface:Lo/copyArray;

    sget-object v15, Lo/setTargetPosition;->onMessageChannelReady:[Lo/applyUserOverwrite;

    const/16 v16, 0x5

    aget-object v15, v15, v16

    invoke-virtual {v14, v15}, Lo/SortedListAdapterCallback;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->longValue()J

    move-result-wide v14

    const-string v9, "_id"

    .line 1092
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string/jumbo v8, "thread_id"

    .line 1093
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v7, "service_center"

    .line 1094
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-wide/from16 p7, v12

    const-string v12, "address"

    .line 1095
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string/jumbo v13, "subject"

    .line 1096
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-wide/from16 v18, v14

    const-string v14, "body"

    .line 1097
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string v15, "person"

    .line 1098
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v20, v3

    const-string v3, "date_sent"

    .line 1099
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v0, "date"

    .line 1100
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move-object/from16 v21, v4

    const-string v4, "read"

    .line 1101
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v22, v6

    const-string/jumbo v6, "type"

    .line 1102
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v23, v5

    .line 1103
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    move-wide/from16 v24, v10

    const/16 v10, 0x16

    if-lt v5, v10, :cond_2

    const-string/jumbo v5, "sub_id"

    .line 1104
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    goto :goto_1

    :cond_2
    const/4 v5, -0x1

    :goto_1
    move-wide/from16 v26, v18

    const/4 v10, 0x0

    move-wide/from16 v18, p7

    .line 1108
    :goto_2
    new-instance v11, Lo/setDy;

    .line 1109
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    .line 1110
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 1111
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 1112
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 1113
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 1114
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 1115
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 1116
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v37

    invoke-static/range {v37 .. v38}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    .line 1117
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v38

    .line 1118
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    move/from16 p8, v0

    .line 1119
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move/from16 v44, v3

    const-string v3, "cursor.getString(columnIndexType)"

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    const-string v3, "1"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v0, v3}, Lo/childWrites;->onPostMessage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "inbox"

    goto :goto_3

    :cond_3
    const-string/jumbo v0, "sent"

    :goto_3
    move-object/from16 v41, v0

    const/4 v0, -0x1

    if-eq v5, v0, :cond_4

    .line 1125
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move/from16 v43, v3

    goto :goto_4

    :cond_4
    const/4 v3, -0x2

    const/16 v43, -0x2

    .line 1127
    :goto_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v28, v11

    .line 1108
    invoke-direct/range {v28 .. v43}, Lo/setDy;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1128
    sget-object v3, Lo/RecyclerView$SmoothScroller$ScrollVectorProvider;->onPostMessage:Lo/writeStringNoTag;

    .line 5618
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v3, v11, v0}, Lo/writeStringNoTag;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    .line 1128
    invoke-virtual {v2, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    if-nez p6, :cond_7

    const-wide/16 v28, 0x1

    add-long v28, v18, v28

    move v0, v4

    .line 6019
    iget-wide v3, v11, Lo/setDy;->asInterface:J

    cmp-long v30, v28, v3

    if-lez v30, :cond_5

    goto :goto_5

    :cond_5
    cmp-long v28, v24, v3

    if-lez v28, :cond_6

    .line 7019
    iget-wide v3, v11, Lo/setDy;->asInterface:J

    move-wide/from16 v18, v3

    .line 8006
    :cond_6
    :goto_5
    iget-wide v3, v11, Lo/setDy;->ICustomTabsCallback:J

    cmp-long v28, v3, v26

    if-lez v28, :cond_8

    .line 9006
    iget-wide v3, v11, Lo/setDy;->ICustomTabsCallback:J

    move-wide/from16 v26, v3

    goto :goto_6

    :cond_7
    move v0, v4

    .line 1137
    :cond_8
    :goto_6
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    const/16 v4, 0x32

    const-string v11, "/dagger/v2/message"

    if-eq v3, v4, :cond_a

    invoke-interface {v1}, Landroid/database/Cursor;->isLast()Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_7

    :cond_9
    move/from16 v28, v0

    move/from16 v29, v5

    move/from16 v30, v6

    move/from16 v31, v7

    move/from16 v32, v8

    move/from16 v34, v9

    const/4 v4, 0x1

    move-object/from16 v0, p1

    goto/16 :goto_d

    :cond_a
    :goto_7
    add-int/lit8 v10, v10, 0x1

    .line 1139
    invoke-interface {v1}, Landroid/database/Cursor;->isLast()Z

    move-result v3

    if-eqz v3, :cond_b

    move-object/from16 v3, p9

    goto :goto_8

    :cond_b
    const/4 v3, 0x0

    :goto_8
    move/from16 v28, v0

    const/4 v4, 0x2

    new-array v0, v4, [Lo/addWrite;

    .line 1141
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move/from16 v29, v5

    .line 9043
    new-instance v5, Lo/addWrite;

    move/from16 v30, v6

    move-object/from16 v6, v23

    invoke-direct {v5, v6, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x0

    aput-object v5, v0, v4

    .line 1142
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 10043
    new-instance v5, Lo/addWrite;

    move-object/from16 v6, v22

    invoke-direct {v5, v6, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x1

    aput-object v5, v0, v4

    move-object/from16 v4, v21

    .line 1140
    invoke-static {v0, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10105
    new-instance v5, Ljava/util/HashMap;

    const/16 v17, 0x2

    invoke-static/range {v17 .. v17}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v4

    invoke-direct {v5, v4}, Ljava/util/HashMap;-><init>(I)V

    check-cast v5, Ljava/util/Map;

    invoke-static {v5, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v0, "SMS_batch_created"

    .line 1140
    invoke-static {v0, v5}, Lo/replaceAll;->onMessageChannelReady(Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v0, p1

    .line 1144
    invoke-static {v0, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10192
    sget-object v4, Lo/isPendingInitialRun$ICustomTabsCallback$onNavigationEvent;->extraCallback:Lo/isPendingInitialRun$ICustomTabsCallback$onNavigationEvent;

    invoke-static {v0, v4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    move/from16 v4, v20

    if-ne v10, v4, :cond_c

    :goto_9
    move/from16 v20, v4

    const/4 v5, 0x1

    goto :goto_b

    :cond_c
    :goto_a
    move/from16 v20, v4

    const/4 v5, 0x0

    goto :goto_b

    :cond_d
    move/from16 v4, v20

    .line 10193
    sget-object v5, Lo/isPendingInitialRun$ICustomTabsCallback$extraCallback;->onPostMessage:Lo/isPendingInitialRun$ICustomTabsCallback$extraCallback;

    invoke-static {v0, v5}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    add-int/lit8 v5, v4, -0x1

    if-lt v10, v5, :cond_c

    goto :goto_9

    .line 10194
    :cond_e
    sget-object v5, Lo/isPendingInitialRun$ICustomTabsCallback$onMessageChannelReady;->ICustomTabsCallback:Lo/isPendingInitialRun$ICustomTabsCallback$onMessageChannelReady;

    invoke-static {v0, v5}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    add-int/lit8 v5, v4, -0x2

    if-lt v10, v5, :cond_c

    goto :goto_9

    .line 10195
    :cond_f
    sget-object v5, Lo/isPendingInitialRun$ICustomTabsCallback$onPostMessage;->onMessageChannelReady:Lo/isPendingInitialRun$ICustomTabsCallback$onPostMessage;

    invoke-static {v0, v5}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    goto :goto_a

    .line 10196
    :cond_10
    sget-object v5, Lo/isPendingInitialRun$ICustomTabsCallback$ICustomTabsCallback;->extraCallback:Lo/isPendingInitialRun$ICustomTabsCallback$ICustomTabsCallback;

    invoke-static {v0, v5}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    goto :goto_a

    :goto_b
    const-string v4, "method"

    move-object/from16 v22, v6

    const-string v6, "dataList"

    move/from16 v31, v7

    const-string/jumbo v7, "url"

    if-eqz v5, :cond_11

    .line 10203
    new-instance v5, Lo/onRequestSendAccessibilityEvent$onMessageChannelReady;

    invoke-direct {v5}, Lo/onRequestSendAccessibilityEvent$onMessageChannelReady;-><init>()V

    move/from16 v32, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v33, Lo/isPendingInitialRun;->onNavigationEvent:Lo/isPendingInitialRun;

    move/from16 v34, v9

    invoke-static {}, Lo/isPendingInitialRun;->onPostMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11069
    iput-object v8, v5, Lo/onRequestSendAccessibilityEvent$onMessageChannelReady;->extraCallback:Ljava/lang/String;

    .line 10204
    move-object v7, v2

    check-cast v7, Ljava/lang/Iterable;

    invoke-static {v7}, Lo/getSessionPersistenceKey;->onNavigationEvent(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v7

    invoke-static {v7, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12059
    iput-object v7, v5, Lo/onRequestSendAccessibilityEvent$onMessageChannelReady;->onPostMessage:Ljava/util/List;

    .line 10205
    sget-object v6, Lo/onRequestSendAccessibilityEvent$onNavigationEvent$ICustomTabsCallback;->extraCallback:Lo/onRequestSendAccessibilityEvent$onNavigationEvent$ICustomTabsCallback;

    check-cast v6, Lo/onRequestSendAccessibilityEvent$onNavigationEvent;

    invoke-static {v6, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12064
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lo/onRequestSendAccessibilityEvent$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/String;

    const/4 v4, 0x1

    .line 12079
    iput-boolean v4, v5, Lo/onRequestSendAccessibilityEvent$onMessageChannelReady;->onNavigationEvent:Z

    .line 13074
    iput-boolean v4, v5, Lo/onRequestSendAccessibilityEvent$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 10208
    invoke-virtual {v5, v3}, Lo/onRequestSendAccessibilityEvent$onMessageChannelReady;->onPostMessage(Lo/getServerTime;)V

    const/4 v4, 0x1

    goto :goto_c

    :cond_11
    move/from16 v32, v8

    move/from16 v34, v9

    .line 10210
    new-instance v5, Lo/onRequestSendAccessibilityEvent$onMessageChannelReady;

    invoke-direct {v5}, Lo/onRequestSendAccessibilityEvent$onMessageChannelReady;-><init>()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lo/isPendingInitialRun;->onNavigationEvent:Lo/isPendingInitialRun;

    invoke-static {}, Lo/isPendingInitialRun;->onPostMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14069
    iput-object v8, v5, Lo/onRequestSendAccessibilityEvent$onMessageChannelReady;->extraCallback:Ljava/lang/String;

    .line 10211
    move-object v7, v2

    check-cast v7, Ljava/lang/Iterable;

    invoke-static {v7}, Lo/getSessionPersistenceKey;->onNavigationEvent(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v7

    invoke-static {v7, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15059
    iput-object v7, v5, Lo/onRequestSendAccessibilityEvent$onMessageChannelReady;->onPostMessage:Ljava/util/List;

    .line 10212
    sget-object v6, Lo/onRequestSendAccessibilityEvent$onNavigationEvent$ICustomTabsCallback;->extraCallback:Lo/onRequestSendAccessibilityEvent$onNavigationEvent$ICustomTabsCallback;

    check-cast v6, Lo/onRequestSendAccessibilityEvent$onNavigationEvent;

    invoke-static {v6, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15064
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lo/onRequestSendAccessibilityEvent$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/String;

    const/4 v4, 0x1

    .line 15079
    iput-boolean v4, v5, Lo/onRequestSendAccessibilityEvent$onMessageChannelReady;->onNavigationEvent:Z

    .line 10214
    invoke-virtual {v5, v3}, Lo/onRequestSendAccessibilityEvent$onMessageChannelReady;->onPostMessage(Lo/getServerTime;)V

    .line 10216
    :goto_c
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->clear()V

    .line 1146
    :goto_d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_14

    .line 1148
    sget-object v3, Lo/isPendingInitialRun$ICustomTabsCallback$extraCallback;->onPostMessage:Lo/isPendingInitialRun$ICustomTabsCallback$extraCallback;

    invoke-static {v0, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x9

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "SMSHandler:send"

    .line 1149
    invoke-static {v0, v4, v3}, Lo/frameInBuffer;->extraCallback(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1150
    sget-object v0, Lo/overridesItemVisibility;->onNavigationEvent:Lo/overridesItemVisibility$extraCallback;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lo/isPendingInitialRun;->onNavigationEvent:Lo/isPendingInitialRun;

    invoke-static {}, Lo/isPendingInitialRun;->onPostMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "login"

    invoke-static {v0, v3}, Lo/overridesItemVisibility$extraCallback;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)Lo/overridesItemVisibility;

    move-result-object v0

    invoke-static {v0}, Lo/overridesItemVisibility;->ICustomTabsCallback(Lo/overridesItemVisibility;)V

    :cond_12
    if-nez p6, :cond_13

    .line 1154
    sget-object v0, Lo/setTargetPosition;->onRelationshipValidationResult:Lo/setTargetPosition;

    .line 17000
    sget-object v0, Lo/setTargetPosition;->extraCallback:Lo/copyArray;

    sget-object v3, Lo/setTargetPosition;->onMessageChannelReady:[Lo/applyUserOverwrite;

    const/4 v5, 0x2

    aget-object v3, v3, v5

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lo/SortedListAdapterCallback;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1155
    sget-object v0, Lo/setTargetPosition;->onRelationshipValidationResult:Lo/setTargetPosition;

    .line 18000
    sget-object v0, Lo/setTargetPosition;->asInterface:Lo/copyArray;

    sget-object v3, Lo/setTargetPosition;->onMessageChannelReady:[Lo/applyUserOverwrite;

    aget-object v3, v3, v16

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lo/SortedListAdapterCallback;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1157
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "getAllSms() called with: context = ["

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v6, p0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "], address = ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], from = ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v7, p2

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "], to = ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, p4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "KETAN"

    invoke-static {v2, v0}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_14
    move-object/from16 v6, p0

    move-wide/from16 v7, p2

    move/from16 v0, p8

    move/from16 v4, v28

    move/from16 v5, v29

    move/from16 v6, v30

    move/from16 v7, v31

    move/from16 v8, v32

    move/from16 v9, v34

    move/from16 v3, v44

    goto/16 :goto_2

    .line 10196
    :cond_15
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_16
    if-eqz p9, :cond_18

    .line 1159
    invoke-interface/range {p9 .. p9}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    goto :goto_e

    :cond_17
    if-eqz p9, :cond_18

    .line 1162
    invoke-interface/range {p9 .. p9}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    :cond_18
    :goto_e
    if-eqz v1, :cond_19

    .line 1164
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_19
    return-void

    .line 1219
    :cond_1a
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic onNavigationEvent(Landroid/content/Context;Lo/isPendingInitialRun$ICustomTabsCallback;JJZLo/getServerTime;I)V
    .locals 12

    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_0

    .line 34
    sget-object v0, Lo/isPendingInitialRun$ICustomTabsCallback$onPostMessage;->onMessageChannelReady:Lo/isPendingInitialRun$ICustomTabsCallback$onPostMessage;

    check-cast v0, Lo/isPendingInitialRun$ICustomTabsCallback;

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, p1

    :goto_0
    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_1

    .line 35
    sget-object v0, Lo/setTargetPosition;->onRelationshipValidationResult:Lo/setTargetPosition;

    invoke-virtual {v0}, Lo/setTargetPosition;->ICustomTabsCallback()J

    move-result-wide v0

    move-wide v5, v0

    goto :goto_1

    :cond_1
    move-wide v5, p2

    :goto_1
    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_2

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-wide v7, v0

    goto :goto_2

    :cond_2
    move-wide/from16 v7, p4

    :goto_2
    and-int/lit8 v0, p8, 0x10

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    move/from16 v2, p6

    :goto_3
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    move-object v9, v0

    goto :goto_4

    :cond_4
    move-object/from16 v9, p7

    :goto_4
    const-string v0, "context"

    move-object v3, p0

    .line 38
    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "source"

    invoke-static {v4, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x9

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    .line 1043
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v1

    const/4 v1, 0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v11, 0x2

    aput-object v1, v10, v11

    const/4 v1, 0x3

    aput-object v4, v10, v1

    const-string v1, "SMSHandler:getSms:from=%s,to=%s,isCustom=%s,source=%s"

    .line 1039
    invoke-static {v0, v1, v10}, Lo/frameInBuffer;->extraCallback(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1045
    sget-object v0, Lo/RecyclerView$State;->ICustomTabsCallback:Lo/RecyclerView$State;

    new-instance v10, Lo/RecyclerView$SmoothScroller$ScrollVectorProvider$onPostMessage;

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lo/RecyclerView$SmoothScroller$ScrollVectorProvider$onPostMessage;-><init>(ZLandroid/content/Context;Lo/isPendingInitialRun$ICustomTabsCallback;JJLo/getServerTime;)V

    check-cast v10, Ljava/lang/Runnable;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
