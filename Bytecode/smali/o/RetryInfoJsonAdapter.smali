.class public final Lo/RetryInfoJsonAdapter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/EligibilityPayload$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/RetryInfoJsonAdapter$extraCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/EligibilityPayload$onNavigationEvent<",
        "Lo/ShortCircuitInfoJsonAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Ljava/util/regex/Pattern;

.field private static final ICustomTabsCallback$Stub:Ljava/util/regex/Pattern;

.field private static final ICustomTabsCallback$Stub$Proxy:Ljava/util/regex/Pattern;

.field private static final ICustomTabsService:Ljava/util/regex/Pattern;

.field private static final ICustomTabsService$Stub:Ljava/util/regex/Pattern;

.field private static final ICustomTabsService$Stub$Proxy:Ljava/util/regex/Pattern;

.field private static final INotificationSideChannel:Ljava/util/regex/Pattern;

.field private static final INotificationSideChannel$Default:Ljava/util/regex/Pattern;

.field private static final INotificationSideChannel$Stub:Ljava/util/regex/Pattern;

.field private static final INotificationSideChannel$Stub$Proxy:Ljava/util/regex/Pattern;

.field private static final IPostMessageService:Ljava/util/regex/Pattern;

.field private static final IPostMessageService$Stub:Ljava/util/regex/Pattern;

.field private static final IPostMessageService$Stub$Proxy:Ljava/util/regex/Pattern;

.field private static final RemoteActionCompatParcelizer:Ljava/util/regex/Pattern;

.field private static final asBinder:Ljava/util/regex/Pattern;

.field private static final asInterface:Ljava/util/regex/Pattern;

.field private static final cancel:Ljava/util/regex/Pattern;

.field private static final cancelAll:Ljava/util/regex/Pattern;

.field private static final extraCallback:Ljava/util/regex/Pattern;

.field private static final extraCommand:Ljava/util/regex/Pattern;

.field private static final getDefaultImpl:Ljava/util/regex/Pattern;

.field private static final getInterfaceDescriptor:Ljava/util/regex/Pattern;

.field private static final mayLaunchUrl:Ljava/util/regex/Pattern;

.field private static final newSession:Ljava/util/regex/Pattern;

.field private static final notify:Ljava/util/regex/Pattern;

.field private static final onMessageChannelReady:Ljava/util/regex/Pattern;

.field private static final onNavigationEvent:Ljava/util/regex/Pattern;

.field private static final onPostMessage:Ljava/util/regex/Pattern;

.field private static final onRelationshipValidationResult:Ljava/util/regex/Pattern;

.field private static final onTransact:Ljava/util/regex/Pattern;

.field private static final postMessage:Ljava/util/regex/Pattern;

.field private static final requestPostMessageChannel:Ljava/util/regex/Pattern;

.field private static final setDefaultImpl:Ljava/util/regex/Pattern;

.field private static final updateVisuals:Ljava/util/regex/Pattern;

.field private static final validateRelationship:Ljava/util/regex/Pattern;

.field private static final warmup:Ljava/util/regex/Pattern;


# instance fields
.field private final read:Lo/ShortCircuitInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "AVERAGE-BANDWIDTH=(\\d+)\\b"

    .line 109
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/RetryInfoJsonAdapter;->onNavigationEvent:Ljava/util/regex/Pattern;

    const-string v0, "VIDEO=\"(.+?)\""

    .line 110
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/RetryInfoJsonAdapter;->extraCallback:Ljava/util/regex/Pattern;

    const-string v0, "AUDIO=\"(.+?)\""

    .line 111
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/RetryInfoJsonAdapter;->onMessageChannelReady:Ljava/util/regex/Pattern;

    const-string v0, "SUBTITLES=\"(.+?)\""

    .line 112
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/RetryInfoJsonAdapter;->onPostMessage:Ljava/util/regex/Pattern;

    const-string v0, "CLOSED-CAPTIONS=\"(.+?)\""

    .line 113
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/RetryInfoJsonAdapter;->ICustomTabsCallback:Ljava/util/regex/Pattern;

    const-string v0, "[^-]BANDWIDTH=(\\d+)\\b"

    .line 114
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/RetryInfoJsonAdapter;->asBinder:Ljava/util/regex/Pattern;

    const-string v0, "CHANNELS=\"(.+?)\""

    .line 115
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/RetryInfoJsonAdapter;->onTransact:Ljava/util/regex/Pattern;

    const-string v0, "CODECS=\"(.+?)\""

    .line 116
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/RetryInfoJsonAdapter;->ICustomTabsCallback$Stub:Ljava/util/regex/Pattern;

    const-string v0, "RESOLUTION=(\\d+x\\d+)"

    .line 117
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/RetryInfoJsonAdapter;->onRelationshipValidationResult:Ljava/util/regex/Pattern;

    const-string v0, "FRAME-RATE=([\\d\\.]+)\\b"

    .line 118
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/RetryInfoJsonAdapter;->asInterface:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-TARGETDURATION:(\\d+)\\b"

    .line 119
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/RetryInfoJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-VERSION:(\\d+)\\b"

    .line 121
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/RetryInfoJsonAdapter;->newSession:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-PLAYLIST-TYPE:(.+)\\b"

    .line 122
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/RetryInfoJsonAdapter;->ICustomTabsService:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b"

    .line 124
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/RetryInfoJsonAdapter;->warmup:Ljava/util/regex/Pattern;

    const-string v0, "#EXTINF:([\\d\\.]+)\\b"

    .line 126
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/RetryInfoJsonAdapter;->getInterfaceDescriptor:Ljava/util/regex/Pattern;

    const-string v0, "#EXTINF:[\\d\\.]+\\b,(.+)"

    .line 129
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/RetryInfoJsonAdapter;->postMessage:Ljava/util/regex/Pattern;

    const-string v0, "TIME-OFFSET=(-?[\\d\\.]+)\\b"

    .line 130
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/RetryInfoJsonAdapter;->extraCommand:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b"

    .line 131
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/RetryInfoJsonAdapter;->mayLaunchUrl:Ljava/util/regex/Pattern;

    const-string v0, "BYTERANGE=\"(\\d+(?:@\\d+)?)\\b\""

    .line 134
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/RetryInfoJsonAdapter;->updateVisuals:Ljava/util/regex/Pattern;

    const-string v0, "METHOD=(NONE|AES-128|SAMPLE-AES|SAMPLE-AES-CENC|SAMPLE-AES-CTR)\\s*(?:,|$)"

    .line 136
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/RetryInfoJsonAdapter;->requestPostMessageChannel:Ljava/util/regex/Pattern;

    const-string v0, "KEYFORMAT=\"(.+?)\""

    .line 149
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/RetryInfoJsonAdapter;->ICustomTabsService$Stub$Proxy:Ljava/util/regex/Pattern;

    const-string v0, "KEYFORMATVERSIONS=\"(.+?)\""

    .line 151
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/RetryInfoJsonAdapter;->IPostMessageService:Ljava/util/regex/Pattern;

    const-string v0, "URI=\"(.+?)\""

    .line 152
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/RetryInfoJsonAdapter;->ICustomTabsService$Stub:Ljava/util/regex/Pattern;

    const-string v0, "IV=([^,.*]+)"

    .line 153
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/RetryInfoJsonAdapter;->validateRelationship:Ljava/util/regex/Pattern;

    const-string v0, "TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)"

    .line 154
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/RetryInfoJsonAdapter;->IPostMessageService$Stub:Ljava/util/regex/Pattern;

    const-string v0, "LANGUAGE=\"(.+?)\""

    .line 156
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/RetryInfoJsonAdapter;->cancelAll:Ljava/util/regex/Pattern;

    const-string v0, "NAME=\"(.+?)\""

    .line 157
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/RetryInfoJsonAdapter;->cancel:Ljava/util/regex/Pattern;

    const-string v0, "GROUP-ID=\"(.+?)\""

    .line 158
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/RetryInfoJsonAdapter;->notify:Ljava/util/regex/Pattern;

    const-string v0, "CHARACTERISTICS=\"(.+?)\""

    .line 159
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/RetryInfoJsonAdapter;->IPostMessageService$Stub$Proxy:Ljava/util/regex/Pattern;

    const-string v0, "INSTREAM-ID=\"((?:CC|SERVICE)\\d+)\""

    .line 161
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/RetryInfoJsonAdapter;->INotificationSideChannel:Ljava/util/regex/Pattern;

    const-string v0, "AUTOSELECT"

    .line 162
    invoke-static {v0}, Lo/RetryInfoJsonAdapter;->onNavigationEvent(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/RetryInfoJsonAdapter;->INotificationSideChannel$Stub:Ljava/util/regex/Pattern;

    const-string v0, "DEFAULT"

    .line 163
    invoke-static {v0}, Lo/RetryInfoJsonAdapter;->onNavigationEvent(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/RetryInfoJsonAdapter;->INotificationSideChannel$Stub$Proxy:Ljava/util/regex/Pattern;

    const-string v0, "FORCED"

    .line 164
    invoke-static {v0}, Lo/RetryInfoJsonAdapter;->onNavigationEvent(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/RetryInfoJsonAdapter;->getDefaultImpl:Ljava/util/regex/Pattern;

    const-string v0, "VALUE=\"(.+?)\""

    .line 165
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/RetryInfoJsonAdapter;->INotificationSideChannel$Default:Ljava/util/regex/Pattern;

    const-string v0, "IMPORT=\"(.+?)\""

    .line 166
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/RetryInfoJsonAdapter;->setDefaultImpl:Ljava/util/regex/Pattern;

    const-string v0, "\\{\\$([a-zA-Z0-9\\-_]+)\\}"

    .line 168
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/RetryInfoJsonAdapter;->RemoteActionCompatParcelizer:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 177
    sget-object v0, Lo/ShortCircuitInfo;->onMessageChannelReady:Lo/ShortCircuitInfo;

    invoke-direct {p0, v0}, Lo/RetryInfoJsonAdapter;-><init>(Lo/ShortCircuitInfo;)V

    return-void
.end method

.method public constructor <init>(Lo/ShortCircuitInfo;)V
    .locals 0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p1, p0, Lo/RetryInfoJsonAdapter;->read:Lo/ShortCircuitInfo;

    return-void
.end method

.method private static ICustomTabsCallback(Ljava/lang/String;)I
    .locals 3

    .line 786
    sget-object v0, Lo/RetryInfoJsonAdapter;->INotificationSideChannel$Stub$Proxy:Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lo/RetryInfoJsonAdapter;->onNavigationEvent(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v0

    .line 789
    sget-object v2, Lo/RetryInfoJsonAdapter;->getDefaultImpl:Ljava/util/regex/Pattern;

    invoke-static {p0, v2, v1}, Lo/RetryInfoJsonAdapter;->onNavigationEvent(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    or-int/lit8 v0, v0, 0x2

    .line 792
    :cond_0
    sget-object v2, Lo/RetryInfoJsonAdapter;->INotificationSideChannel$Stub:Ljava/util/regex/Pattern;

    invoke-static {p0, v2, v1}, Lo/RetryInfoJsonAdapter;->onNavigationEvent(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    return v0
.end method

.method private static ICustomTabsCallback(Ljava/lang/String;Ljava/util/regex/Pattern;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 863
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lo/RetryInfoJsonAdapter;->onNavigationEvent(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method private static ICustomTabsCallback(Lo/RetryInfoJsonAdapter$extraCallback;Ljava/lang/String;)Lo/ShortCircuitInfo;
    .locals 39
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p1

    .line 259
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 260
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 261
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 262
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 263
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 264
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 265
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 266
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 267
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 268
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 275
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lo/RetryInfoJsonAdapter$extraCallback;->extraCallback()Z

    move-result v15

    const/high16 v16, -0x40800000    # -1.0f

    const/16 v17, -0x1

    if-eqz v15, :cond_d

    .line 276
    invoke-virtual/range {p0 .. p0}, Lo/RetryInfoJsonAdapter$extraCallback;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v15

    const-string v9, "#EXT"

    .line 278
    invoke-virtual {v15, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 280
    invoke-virtual {v8, v15}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v9, "#EXT-X-DEFINE"

    .line 283
    invoke-virtual {v15, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 284
    sget-object v9, Lo/RetryInfoJsonAdapter;->cancel:Ljava/util/regex/Pattern;

    .line 285
    invoke-static {v15, v9, v11}, Lo/RetryInfoJsonAdapter;->onNavigationEvent(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lo/RetryInfoJsonAdapter;->INotificationSideChannel$Default:Ljava/util/regex/Pattern;

    .line 286
    invoke-static {v15, v10, v11}, Lo/RetryInfoJsonAdapter;->onNavigationEvent(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    .line 284
    invoke-virtual {v11, v9, v10}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    move-object/from16 v19, v7

    move-object/from16 v21, v8

    move-object/from16 v20, v12

    move/from16 v18, v13

    goto/16 :goto_7

    :cond_1
    const-string v9, "#EXT-X-INDEPENDENT-SEGMENTS"

    .line 287
    invoke-virtual {v15, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v13, 0x1

    goto :goto_0

    :cond_2
    const-string v9, "#EXT-X-MEDIA"

    .line 289
    invoke-virtual {v15, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 292
    invoke-virtual {v3, v15}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string v9, "#EXT-X-SESSION-KEY"

    .line 293
    invoke-virtual {v15, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 294
    sget-object v9, Lo/RetryInfoJsonAdapter;->ICustomTabsService$Stub$Proxy:Ljava/util/regex/Pattern;

    const-string v10, "identity"

    .line 295
    invoke-static {v15, v9, v10, v11}, Lo/RetryInfoJsonAdapter;->onMessageChannelReady(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    .line 296
    invoke-static {v15, v9, v11}, Lo/RetryInfoJsonAdapter;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lo/generateLink$extraCallback;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 298
    sget-object v10, Lo/RetryInfoJsonAdapter;->requestPostMessageChannel:Ljava/util/regex/Pattern;

    invoke-static {v15, v10, v11}, Lo/RetryInfoJsonAdapter;->onNavigationEvent(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    .line 299
    invoke-static {v10}, Lo/RetryInfoJsonAdapter;->extraCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 300
    new-instance v15, Lo/generateLink;

    move-object/from16 v19, v7

    move/from16 v18, v13

    const/4 v13, 0x1

    new-array v7, v13, [Lo/generateLink$extraCallback;

    const/4 v13, 0x0

    aput-object v9, v7, v13

    invoke-direct {v15, v10, v7}, Lo/generateLink;-><init>(Ljava/lang/String;[Lo/generateLink$extraCallback;)V

    invoke-virtual {v12, v15}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_4
    move-object/from16 v19, v7

    move/from16 v18, v13

    goto/16 :goto_6

    :cond_5
    move-object/from16 v19, v7

    move/from16 v18, v13

    const-string v7, "#EXT-X-STREAM-INF"

    .line 302
    invoke-virtual {v15, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    const-string v7, "CLOSED-CAPTIONS=NONE"

    .line 303
    invoke-virtual {v15, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    or-int/2addr v14, v7

    .line 304
    sget-object v7, Lo/RetryInfoJsonAdapter;->asBinder:Ljava/util/regex/Pattern;

    invoke-static {v15, v7}, Lo/RetryInfoJsonAdapter;->extraCallback(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v7

    .line 305
    sget-object v9, Lo/RetryInfoJsonAdapter;->onNavigationEvent:Ljava/util/regex/Pattern;

    .line 306
    invoke-static {v15, v9, v11}, Lo/RetryInfoJsonAdapter;->onMessageChannelReady(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 309
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 311
    :cond_6
    sget-object v9, Lo/RetryInfoJsonAdapter;->ICustomTabsCallback$Stub:Ljava/util/regex/Pattern;

    invoke-static {v15, v9, v11}, Lo/RetryInfoJsonAdapter;->onMessageChannelReady(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v24

    .line 312
    sget-object v9, Lo/RetryInfoJsonAdapter;->onRelationshipValidationResult:Ljava/util/regex/Pattern;

    .line 313
    invoke-static {v15, v9, v11}, Lo/RetryInfoJsonAdapter;->onMessageChannelReady(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9

    const-string/jumbo v10, "x"

    .line 317
    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 318
    aget-object v13, v9, v10

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v13, 0x1

    .line 319
    aget-object v9, v9, v13

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-lez v10, :cond_8

    if-gtz v9, :cond_7

    goto :goto_2

    :cond_7
    move/from16 v17, v10

    goto :goto_3

    :cond_8
    :goto_2
    const/4 v9, -0x1

    :goto_3
    move/from16 v28, v9

    move/from16 v27, v17

    goto :goto_4

    :cond_9
    const/16 v27, -0x1

    const/16 v28, -0x1

    .line 330
    :goto_4
    sget-object v9, Lo/RetryInfoJsonAdapter;->asInterface:Ljava/util/regex/Pattern;

    .line 331
    invoke-static {v15, v9, v11}, Lo/RetryInfoJsonAdapter;->onMessageChannelReady(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 333
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v16

    move/from16 v29, v16

    goto :goto_5

    :cond_a
    const/high16 v29, -0x40800000    # -1.0f

    .line 335
    :goto_5
    sget-object v9, Lo/RetryInfoJsonAdapter;->extraCallback:Ljava/util/regex/Pattern;

    invoke-static {v15, v9, v11}, Lo/RetryInfoJsonAdapter;->onMessageChannelReady(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    .line 336
    sget-object v10, Lo/RetryInfoJsonAdapter;->onMessageChannelReady:Ljava/util/regex/Pattern;

    invoke-static {v15, v10, v11}, Lo/RetryInfoJsonAdapter;->onMessageChannelReady(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    .line 337
    sget-object v13, Lo/RetryInfoJsonAdapter;->onPostMessage:Ljava/util/regex/Pattern;

    .line 338
    invoke-static {v15, v13, v11}, Lo/RetryInfoJsonAdapter;->onMessageChannelReady(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v13

    move/from16 v37, v14

    .line 339
    sget-object v14, Lo/RetryInfoJsonAdapter;->ICustomTabsCallback:Ljava/util/regex/Pattern;

    .line 340
    invoke-static {v15, v14, v11}, Lo/RetryInfoJsonAdapter;->onMessageChannelReady(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v14

    .line 343
    invoke-virtual/range {p0 .. p0}, Lo/RetryInfoJsonAdapter$extraCallback;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v15

    .line 342
    invoke-static {v15, v11}, Lo/RetryInfoJsonAdapter;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v15

    .line 344
    invoke-static {v1, v15}, Lo/ThirdPartyAuthorizeRequestJsonAdapter;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 347
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const-string v22, "application/x-mpegURL"

    move/from16 v26, v7

    .line 346
    invoke-static/range {v20 .. v32}, Lo/p$a;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/callAPI;IIIFLjava/util/List;II)Lo/p$a;

    move-result-object v32

    move-object/from16 v20, v12

    .line 360
    new-instance v12, Lo/ShortCircuitInfo$onNavigationEvent;

    move-object/from16 v30, v12

    move-object/from16 v31, v15

    move-object/from16 v33, v9

    move-object/from16 v34, v10

    move-object/from16 v35, v13

    move-object/from16 v36, v14

    invoke-direct/range {v30 .. v36}, Lo/ShortCircuitInfo$onNavigationEvent;-><init>(Landroid/net/Uri;Lo/p$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-virtual {v2, v12}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 364
    invoke-virtual {v0, v15}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    if-nez v12, :cond_b

    .line 366
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 367
    invoke-virtual {v0, v15, v12}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    :cond_b
    new-instance v15, Lo/PaymentConfig$onNavigationEvent;

    move-object/from16 v21, v8

    int-to-long v7, v7

    move-object/from16 v30, v15

    move-wide/from16 v31, v7

    move-object/from16 v33, v9

    move-object/from16 v34, v10

    move-object/from16 v35, v13

    move-object/from16 v36, v14

    invoke-direct/range {v30 .. v36}, Lo/PaymentConfig$onNavigationEvent;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v15}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    move/from16 v13, v18

    move-object/from16 v7, v19

    move-object/from16 v12, v20

    move-object/from16 v8, v21

    move/from16 v14, v37

    goto/16 :goto_0

    :cond_c
    :goto_6
    move-object/from16 v21, v8

    move-object/from16 v20, v12

    :goto_7
    move/from16 v13, v18

    move-object/from16 v7, v19

    move-object/from16 v12, v20

    move-object/from16 v8, v21

    goto/16 :goto_0

    :cond_d
    move-object/from16 v19, v7

    move-object/from16 v21, v8

    move-object/from16 v20, v12

    move/from16 v18, v13

    .line 376
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 377
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    const/4 v13, 0x0

    .line 378
    :goto_8
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v9

    const/4 v10, 0x0

    if-ge v13, v9, :cond_10

    .line 379
    invoke-virtual {v2, v13}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lo/ShortCircuitInfo$onNavigationEvent;

    .line 380
    iget-object v12, v9, Lo/ShortCircuitInfo$onNavigationEvent;->onPostMessage:Landroid/net/Uri;

    invoke-virtual {v8, v12}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 381
    iget-object v12, v9, Lo/ShortCircuitInfo$onNavigationEvent;->onMessageChannelReady:Lo/p$a;

    iget-object v12, v12, Lo/p$a;->asInterface:Lo/callAPI;

    if-nez v12, :cond_e

    const/4 v12, 0x1

    goto :goto_9

    :cond_e
    const/4 v12, 0x0

    :goto_9
    invoke-static {v12}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 382
    new-instance v12, Lo/PaymentConfig;

    iget-object v15, v9, Lo/ShortCircuitInfo$onNavigationEvent;->onPostMessage:Landroid/net/Uri;

    .line 384
    invoke-virtual {v0, v15}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    invoke-direct {v12, v10, v10, v15}, Lo/PaymentConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 385
    iget-object v10, v9, Lo/ShortCircuitInfo$onNavigationEvent;->onMessageChannelReady:Lo/p$a;

    new-instance v15, Lo/callAPI;

    move-object/from16 v22, v0

    move-object/from16 p0, v8

    const/4 v0, 0x1

    new-array v8, v0, [Lo/callAPI$onPostMessage;

    const/4 v0, 0x0

    aput-object v12, v8, v0

    invoke-direct {v15, v8}, Lo/callAPI;-><init>([Lo/callAPI$onPostMessage;)V

    .line 387
    invoke-virtual {v10, v15}, Lo/p$a;->ICustomTabsCallback(Lo/callAPI;)Lo/p$a;

    move-result-object v0

    .line 386
    invoke-virtual {v9, v0}, Lo/ShortCircuitInfo$onNavigationEvent;->extraCallback(Lo/p$a;)Lo/ShortCircuitInfo$onNavigationEvent;

    move-result-object v0

    .line 385
    invoke-virtual {v7, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_f
    move-object/from16 v22, v0

    move-object/from16 p0, v8

    :goto_a
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v8, p0

    move-object/from16 v0, v22

    goto :goto_8

    :cond_10
    move-object v0, v10

    move-object v8, v0

    const/4 v13, 0x0

    .line 391
    :goto_b
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v9

    if-ge v13, v9, :cond_1f

    .line 392
    invoke-virtual {v3, v13}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 393
    sget-object v12, Lo/RetryInfoJsonAdapter;->notify:Ljava/util/regex/Pattern;

    invoke-static {v9, v12, v11}, Lo/RetryInfoJsonAdapter;->onNavigationEvent(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    .line 394
    sget-object v15, Lo/RetryInfoJsonAdapter;->cancel:Ljava/util/regex/Pattern;

    invoke-static {v9, v15, v11}, Lo/RetryInfoJsonAdapter;->onNavigationEvent(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v15

    .line 395
    sget-object v10, Lo/RetryInfoJsonAdapter;->ICustomTabsService$Stub:Ljava/util/regex/Pattern;

    invoke-static {v9, v10, v11}, Lo/RetryInfoJsonAdapter;->onMessageChannelReady(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_11

    const/4 v10, 0x0

    goto :goto_c

    .line 396
    :cond_11
    invoke-static {v1, v10}, Lo/ThirdPartyAuthorizeRequestJsonAdapter;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 397
    :goto_c
    sget-object v1, Lo/RetryInfoJsonAdapter;->cancelAll:Ljava/util/regex/Pattern;

    invoke-static {v9, v1, v11}, Lo/RetryInfoJsonAdapter;->onMessageChannelReady(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v34

    .line 398
    invoke-static {v9}, Lo/RetryInfoJsonAdapter;->ICustomTabsCallback(Ljava/lang/String;)I

    move-result v33

    .line 399
    invoke-static {v9, v11}, Lo/RetryInfoJsonAdapter;->onMessageChannelReady(Ljava/lang/String;Ljava/util/Map;)I

    move-result v1

    move-object/from16 v35, v3

    .line 400
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v36, v8

    const-string v8, ":"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    .line 402
    new-instance v3, Lo/callAPI;

    move-object/from16 v37, v7

    const/4 v8, 0x1

    new-array v7, v8, [Lo/callAPI$onPostMessage;

    new-instance v8, Lo/PaymentConfig;

    move/from16 v38, v14

    .line 403
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v14

    invoke-direct {v8, v12, v15, v14}, Lo/PaymentConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    const/4 v14, 0x0

    aput-object v8, v7, v14

    invoke-direct {v3, v7}, Lo/callAPI;-><init>([Lo/callAPI$onPostMessage;)V

    .line 404
    sget-object v7, Lo/RetryInfoJsonAdapter;->IPostMessageService$Stub:Ljava/util/regex/Pattern;

    invoke-static {v9, v7, v11}, Lo/RetryInfoJsonAdapter;->onNavigationEvent(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v8

    const/4 v14, 0x2

    sparse-switch v8, :sswitch_data_0

    goto :goto_d

    :sswitch_0
    const-string v8, "VIDEO"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    const/4 v7, 0x0

    goto :goto_e

    :sswitch_1
    const-string v8, "AUDIO"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    const/4 v7, 0x1

    goto :goto_e

    :sswitch_2
    const-string v8, "CLOSED-CAPTIONS"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    const/4 v7, 0x3

    goto :goto_e

    :sswitch_3
    const-string v8, "SUBTITLES"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    const/4 v7, 0x2

    goto :goto_e

    :cond_12
    :goto_d
    const/4 v7, -0x1

    :goto_e
    if-eqz v7, :cond_1b

    const/4 v8, 0x1

    if-eq v7, v8, :cond_17

    if-eq v7, v14, :cond_16

    const/4 v8, 0x3

    if-eq v7, v8, :cond_13

    goto/16 :goto_14

    .line 487
    :cond_13
    sget-object v3, Lo/RetryInfoJsonAdapter;->INotificationSideChannel:Ljava/util/regex/Pattern;

    invoke-static {v9, v3, v11}, Lo/RetryInfoJsonAdapter;->onNavigationEvent(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "CC"

    .line 490
    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 492
    invoke-virtual {v3, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string v7, "application/cea-608"

    goto :goto_f

    :cond_14
    const/4 v7, 0x7

    .line 495
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string v7, "application/cea-708"

    :goto_f
    move/from16 v31, v3

    move-object/from16 v25, v7

    if-nez v0, :cond_15

    .line 498
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_15
    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, -0x1

    move-object/from16 v23, v15

    move/from16 v28, v33

    move/from16 v29, v1

    move-object/from16 v30, v34

    .line 501
    invoke-static/range {v22 .. v31}, Lo/p$a;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)Lo/p$a;

    move-result-object v1

    .line 500
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    :cond_16
    const/16 v26, 0x0

    const/16 v27, -0x1

    const-string v24, "application/x-mpegURL"

    const-string/jumbo v25, "text/vtt"

    move-object/from16 v23, v15

    move/from16 v28, v33

    move/from16 v29, v1

    move-object/from16 v30, v34

    .line 473
    invoke-static/range {v22 .. v30}, Lo/p$a;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)Lo/p$a;

    move-result-object v1

    .line 483
    invoke-virtual {v1, v3}, Lo/p$a;->ICustomTabsCallback(Lo/callAPI;)Lo/p$a;

    move-result-object v1

    .line 484
    new-instance v3, Lo/ShortCircuitInfo$extraCallback;

    invoke-direct {v3, v10, v1, v12, v15}, Lo/ShortCircuitInfo$extraCallback;-><init>(Landroid/net/Uri;Lo/p$a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    .line 442
    :cond_17
    invoke-static {v2, v12}, Lo/RetryInfoJsonAdapter;->onPostMessage(Ljava/util/ArrayList;Ljava/lang/String;)Lo/ShortCircuitInfo$onNavigationEvent;

    move-result-object v7

    if-eqz v7, :cond_18

    .line 443
    iget-object v7, v7, Lo/ShortCircuitInfo$onNavigationEvent;->onMessageChannelReady:Lo/p$a;

    iget-object v7, v7, Lo/p$a;->asBinder:Ljava/lang/String;

    const/4 v8, 0x1

    .line 445
    invoke-static {v7, v8}, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v26, v7

    goto :goto_10

    :cond_18
    const/4 v8, 0x1

    const/16 v26, 0x0

    :goto_10
    if-eqz v26, :cond_19

    .line 447
    invoke-static/range {v26 .. v26}, Lo/InAppUpdateManager$showDownloadingBottomSheet$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v25, v7

    goto :goto_11

    :cond_19
    const/16 v25, 0x0

    .line 448
    :goto_11
    invoke-static {v9, v11}, Lo/RetryInfoJsonAdapter;->extraCallback(Ljava/lang/String;Ljava/util/Map;)I

    move-result v29

    const/16 v27, 0x0

    const/16 v28, -0x1

    const/16 v30, -0x1

    const/16 v31, 0x0

    const-string v24, "application/x-mpegURL"

    move-object/from16 v23, v15

    move/from16 v32, v33

    move/from16 v33, v1

    .line 450
    invoke-static/range {v22 .. v34}, Lo/p$a;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/callAPI;IIILjava/util/List;IILjava/lang/String;)Lo/p$a;

    move-result-object v1

    if-nez v10, :cond_1a

    move-object v8, v1

    goto :goto_15

    .line 468
    :cond_1a
    new-instance v7, Lo/ShortCircuitInfo$extraCallback;

    invoke-virtual {v1, v3}, Lo/p$a;->ICustomTabsCallback(Lo/callAPI;)Lo/p$a;

    move-result-object v1

    invoke-direct {v7, v10, v1, v12, v15}, Lo/ShortCircuitInfo$extraCallback;-><init>(Landroid/net/Uri;Lo/p$a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_1b
    const/4 v8, 0x1

    .line 406
    invoke-static {v2, v12}, Lo/RetryInfoJsonAdapter;->extraCallback(Ljava/util/ArrayList;Ljava/lang/String;)Lo/ShortCircuitInfo$onNavigationEvent;

    move-result-object v7

    if-eqz v7, :cond_1c

    .line 412
    iget-object v7, v7, Lo/ShortCircuitInfo$onNavigationEvent;->onMessageChannelReady:Lo/p$a;

    .line 413
    iget-object v9, v7, Lo/p$a;->asBinder:Ljava/lang/String;

    invoke-static {v9, v14}, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 414
    iget v14, v7, Lo/p$a;->getInterfaceDescriptor:I

    .line 415
    iget v8, v7, Lo/p$a;->newSession:I

    .line 416
    iget v7, v7, Lo/p$a;->updateVisuals:F

    move/from16 v31, v7

    move/from16 v30, v8

    move-object/from16 v26, v9

    move/from16 v29, v14

    goto :goto_12

    :cond_1c
    const/16 v26, 0x0

    const/16 v29, -0x1

    const/16 v30, -0x1

    const/high16 v31, -0x40800000    # -1.0f

    :goto_12
    if-eqz v26, :cond_1d

    .line 418
    invoke-static/range {v26 .. v26}, Lo/InAppUpdateManager$showDownloadingBottomSheet$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v25, v7

    goto :goto_13

    :cond_1d
    const/16 v25, 0x0

    :goto_13
    const/16 v27, 0x0

    const/16 v28, -0x1

    const/16 v32, 0x0

    const-string v24, "application/x-mpegURL"

    move-object/from16 v23, v15

    move/from16 v34, v1

    .line 420
    invoke-static/range {v22 .. v34}, Lo/p$a;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/callAPI;IIIFLjava/util/List;II)Lo/p$a;

    move-result-object v1

    .line 434
    invoke-virtual {v1, v3}, Lo/p$a;->ICustomTabsCallback(Lo/callAPI;)Lo/p$a;

    move-result-object v1

    if-eqz v10, :cond_1e

    .line 438
    new-instance v3, Lo/ShortCircuitInfo$extraCallback;

    invoke-direct {v3, v10, v1, v12, v15}, Lo/ShortCircuitInfo$extraCallback;-><init>(Landroid/net/Uri;Lo/p$a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_1e
    :goto_14
    move-object/from16 v8, v36

    :goto_15
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p1

    move-object/from16 v3, v35

    move-object/from16 v7, v37

    move/from16 v14, v38

    const/4 v10, 0x0

    goto/16 :goto_b

    :cond_1f
    move-object/from16 v37, v7

    move-object/from16 v36, v8

    move/from16 v38, v14

    if-eqz v38, :cond_20

    .line 521
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_20
    move-object v9, v0

    .line 524
    new-instance v13, Lo/ShortCircuitInfo;

    move-object v0, v13

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v37

    move-object/from16 v7, v19

    move-object/from16 v8, v36

    move/from16 v10, v18

    move-object/from16 v12, v20

    invoke-direct/range {v0 .. v12}, Lo/ShortCircuitInfo;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lo/p$a;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V

    return-object v13

    :sswitch_data_0
    .sparse-switch
        -0x392db8c5 -> :sswitch_3
        -0x13dc6572 -> :sswitch_2
        0x3bba3b6 -> :sswitch_1
        0x4de1c5b -> :sswitch_0
    .end sparse-switch
.end method

.method private static extraCallback(Ljava/lang/String;Ljava/util/Map;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 823
    sget-object v0, Lo/RetryInfoJsonAdapter;->onTransact:Ljava/util/regex/Pattern;

    invoke-static {p0, v0, p1}, Lo/RetryInfoJsonAdapter;->onMessageChannelReady(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "/"

    .line 825
    invoke-static {p0, p1}, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private static extraCallback(Ljava/lang/String;Ljava/util/regex/Pattern;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 859
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lo/RetryInfoJsonAdapter;->onNavigationEvent(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static extraCallback(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "SAMPLE-AES-CENC"

    .line 853
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SAMPLE-AES-CTR"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "cbcs"

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "cenc"

    return-object p0
.end method

.method private static extraCallback(Ljava/util/ArrayList;Ljava/lang/String;)Lo/ShortCircuitInfo$onNavigationEvent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lo/ShortCircuitInfo$onNavigationEvent;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lo/ShortCircuitInfo$onNavigationEvent;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 550
    :goto_0
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 551
    invoke-virtual {p0, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ShortCircuitInfo$onNavigationEvent;

    .line 552
    iget-object v2, v1, Lo/ShortCircuitInfo$onNavigationEvent;->extraCallback:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static onMessageChannelReady(Ljava/lang/String;Ljava/util/regex/Pattern;)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 867
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lo/RetryInfoJsonAdapter;->onNavigationEvent(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0
.end method

.method private static onMessageChannelReady(Ljava/lang/String;Ljava/util/Map;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 800
    sget-object v0, Lo/RetryInfoJsonAdapter;->IPostMessageService$Stub$Proxy:Ljava/util/regex/Pattern;

    .line 801
    invoke-static {p0, v0, p1}, Lo/RetryInfoJsonAdapter;->onMessageChannelReady(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 802
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const-string p1, ","

    .line 805
    invoke-static {p0, p1}, Lo/ThirdPartyAuthorizeRequest;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const-string p1, "public.accessibility.describes-video"

    .line 807
    invoke-static {p0, p1}, Lo/ThirdPartyAuthorizeRequest;->extraCallback([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 v0, 0x200

    :cond_1
    const-string p1, "public.accessibility.transcribes-spoken-dialog"

    .line 810
    invoke-static {p0, p1}, Lo/ThirdPartyAuthorizeRequest;->extraCallback([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    or-int/lit16 v0, v0, 0x1000

    :cond_2
    const-string p1, "public.accessibility.describes-music-and-sound"

    .line 813
    invoke-static {p0, p1}, Lo/ThirdPartyAuthorizeRequest;->extraCallback([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    or-int/lit16 v0, v0, 0x400

    :cond_3
    const-string p1, "public.easy-to-read"

    .line 816
    invoke-static {p0, p1}, Lo/ThirdPartyAuthorizeRequest;->extraCallback([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    or-int/lit16 v0, v0, 0x2000

    :cond_4
    return v0
.end method

.method private static onMessageChannelReady(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 891
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 892
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    .line 893
    :cond_0
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 895
    :cond_1
    invoke-static {p2, p3}, Lo/RetryInfoJsonAdapter;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object p2
.end method

.method private static onMessageChannelReady(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 883
    invoke-static {p0, p1, v0, p2}, Lo/RetryInfoJsonAdapter;->onMessageChannelReady(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 900
    sget-object v0, Lo/RetryInfoJsonAdapter;->RemoteActionCompatParcelizer:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 902
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 903
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 904
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 905
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 907
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 906
    invoke-virtual {p0, v0, v1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    .line 912
    :cond_1
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 913
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static onNavigationEvent(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 873
    invoke-static {p0, p1, p2}, Lo/RetryInfoJsonAdapter;->onMessageChannelReady(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p2

    .line 877
    :cond_0
    new-instance p2, Lcom/google/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t match "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static onNavigationEvent(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 1

    .line 926
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "=(NO|YES"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    return-object p0
.end method

.method private static onNavigationEvent(Lo/ShortCircuitInfo;Lo/RetryInfoJsonAdapter$extraCallback;Ljava/lang/String;)Lo/SessionCallResponseJsonAdapter;
    .locals 64
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 566
    iget-boolean v1, v0, Lo/ShortCircuitInfoJsonAdapter;->updateVisuals:Z

    .line 569
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 570
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 571
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 588
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-string v7, ""

    const/4 v13, 0x0

    const/4 v14, 0x1

    move/from16 v26, v1

    move-wide/from16 v16, v4

    move-wide/from16 v24, v16

    move-object/from16 v37, v7

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v12, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x1

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v38, 0x0

    const/16 v40, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const-wide/16 v47, -0x1

    const/16 v49, 0x0

    const-wide/16 v50, 0x0

    const/16 v52, 0x0

    const-wide/16 v53, 0x0

    .line 593
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lo/RetryInfoJsonAdapter$extraCallback;->extraCallback()Z

    move-result v31

    if-eqz v31, :cond_25

    .line 594
    invoke-virtual/range {p1 .. p1}, Lo/RetryInfoJsonAdapter$extraCallback;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v8

    const-string v9, "#EXT"

    .line 596
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 598
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v9, "#EXT-X-PLAYLIST-TYPE"

    .line 601
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 602
    sget-object v9, Lo/RetryInfoJsonAdapter;->ICustomTabsService:Ljava/util/regex/Pattern;

    invoke-static {v8, v9, v2}, Lo/RetryInfoJsonAdapter;->onNavigationEvent(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "VOD"

    .line 603
    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const-string v9, "EVENT"

    .line 605
    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v4, 0x2

    goto :goto_0

    :cond_3
    const-string v9, "#EXT-X-START"

    .line 608
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    const-wide v31, 0x412e848000000000L    # 1000000.0

    if-eqz v9, :cond_4

    .line 609
    sget-object v9, Lo/RetryInfoJsonAdapter;->extraCommand:Ljava/util/regex/Pattern;

    invoke-static {v8, v9}, Lo/RetryInfoJsonAdapter;->onMessageChannelReady(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    move-result-wide v8

    mul-double v8, v8, v31

    double-to-long v8, v8

    move-wide/from16 v16, v8

    goto :goto_0

    :cond_4
    const-string v9, "#EXT-X-MAP"

    .line 610
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    const-string v10, "@"

    if-eqz v9, :cond_9

    .line 611
    sget-object v9, Lo/RetryInfoJsonAdapter;->ICustomTabsService$Stub:Ljava/util/regex/Pattern;

    invoke-static {v8, v9, v2}, Lo/RetryInfoJsonAdapter;->onNavigationEvent(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    .line 612
    sget-object v11, Lo/RetryInfoJsonAdapter;->updateVisuals:Ljava/util/regex/Pattern;

    invoke-static {v8, v11, v2}, Lo/RetryInfoJsonAdapter;->onMessageChannelReady(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 614
    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 615
    aget-object v10, v8, v13

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 616
    array-length v13, v8

    if-le v13, v14, :cond_5

    .line 617
    aget-object v8, v8, v14

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v29

    :cond_5
    move-wide/from16 v33, v10

    move-wide/from16 v31, v29

    goto :goto_1

    :cond_6
    move-wide/from16 v31, v29

    move-wide/from16 v33, v47

    :goto_1
    if-eqz v5, :cond_8

    if-eqz v46, :cond_7

    goto :goto_2

    .line 622
    :cond_7
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "The encryption IV attribute must be present when an initialization segment is encrypted with METHOD=AES-128."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 626
    :cond_8
    :goto_2
    new-instance v52, Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;

    move-object/from16 v29, v52

    move-object/from16 v30, v9

    move-object/from16 v35, v5

    move-object/from16 v36, v46

    invoke-direct/range {v29 .. v36}, Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v47, -0x1

    goto/16 :goto_0

    :cond_9
    const-string v9, "#EXT-X-TARGETDURATION"

    .line 635
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 636
    sget-object v9, Lo/RetryInfoJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Ljava/util/regex/Pattern;

    invoke-static {v8, v9}, Lo/RetryInfoJsonAdapter;->extraCallback(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v8

    int-to-long v8, v8

    const-wide/32 v10, 0xf4240

    mul-long v24, v8, v10

    :cond_a
    :goto_3
    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_b
    const-string v9, "#EXT-X-MEDIA-SEQUENCE"

    .line 637
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 638
    sget-object v9, Lo/RetryInfoJsonAdapter;->warmup:Ljava/util/regex/Pattern;

    invoke-static {v8, v9}, Lo/RetryInfoJsonAdapter;->ICustomTabsCallback(Ljava/lang/String;Ljava/util/regex/Pattern;)J

    move-result-wide v38

    move-wide/from16 v21, v38

    goto :goto_3

    :cond_c
    const-string v9, "#EXT-X-VERSION"

    .line 640
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 641
    sget-object v9, Lo/RetryInfoJsonAdapter;->newSession:Ljava/util/regex/Pattern;

    invoke-static {v8, v9}, Lo/RetryInfoJsonAdapter;->extraCallback(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v23

    goto :goto_3

    :cond_d
    const-string v9, "#EXT-X-DEFINE"

    .line 642
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 643
    sget-object v9, Lo/RetryInfoJsonAdapter;->setDefaultImpl:Ljava/util/regex/Pattern;

    invoke-static {v8, v9, v2}, Lo/RetryInfoJsonAdapter;->onMessageChannelReady(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_e

    .line 645
    iget-object v8, v0, Lo/ShortCircuitInfo;->onRelationshipValidationResult:Ljava/util/Map;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_f

    .line 647
    invoke-virtual {v2, v9, v8}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 652
    :cond_e
    sget-object v9, Lo/RetryInfoJsonAdapter;->cancel:Ljava/util/regex/Pattern;

    .line 653
    invoke-static {v8, v9, v2}, Lo/RetryInfoJsonAdapter;->onNavigationEvent(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lo/RetryInfoJsonAdapter;->INotificationSideChannel$Default:Ljava/util/regex/Pattern;

    .line 654
    invoke-static {v8, v10, v2}, Lo/RetryInfoJsonAdapter;->onNavigationEvent(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    .line 652
    invoke-virtual {v2, v9, v8}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    :goto_4
    move-object/from16 v57, v3

    move-object/from16 v61, v7

    const/4 v11, 0x0

    const-wide/16 v55, -0x1

    goto/16 :goto_9

    :cond_10
    const-string v9, "#EXTINF"

    .line 656
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 657
    sget-object v9, Lo/RetryInfoJsonAdapter;->getInterfaceDescriptor:Ljava/util/regex/Pattern;

    .line 658
    invoke-static {v8, v9}, Lo/RetryInfoJsonAdapter;->onMessageChannelReady(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    move-result-wide v9

    mul-double v9, v9, v31

    double-to-long v9, v9

    .line 659
    sget-object v11, Lo/RetryInfoJsonAdapter;->postMessage:Ljava/util/regex/Pattern;

    invoke-static {v8, v11, v7, v2}, Lo/RetryInfoJsonAdapter;->onMessageChannelReady(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v37

    move-wide/from16 v53, v9

    goto :goto_3

    :cond_11
    const-string v9, "#EXT-X-KEY"

    .line 660
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 661
    sget-object v5, Lo/RetryInfoJsonAdapter;->requestPostMessageChannel:Ljava/util/regex/Pattern;

    invoke-static {v8, v5, v2}, Lo/RetryInfoJsonAdapter;->onNavigationEvent(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    .line 662
    sget-object v9, Lo/RetryInfoJsonAdapter;->ICustomTabsService$Stub$Proxy:Ljava/util/regex/Pattern;

    const-string v10, "identity"

    .line 663
    invoke-static {v8, v9, v10, v2}, Lo/RetryInfoJsonAdapter;->onMessageChannelReady(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "NONE"

    .line 666
    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 667
    invoke-virtual {v3}, Ljava/util/AbstractMap;->clear()V

    const/4 v5, 0x0

    const/4 v13, 0x0

    const/16 v40, 0x0

    const/16 v46, 0x0

    goto/16 :goto_0

    .line 670
    :cond_12
    sget-object v11, Lo/RetryInfoJsonAdapter;->validateRelationship:Ljava/util/regex/Pattern;

    invoke-static {v8, v11, v2}, Lo/RetryInfoJsonAdapter;->onMessageChannelReady(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v46

    .line 671
    invoke-virtual {v10, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    const-string v9, "AES-128"

    .line 672
    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 674
    sget-object v5, Lo/RetryInfoJsonAdapter;->ICustomTabsService$Stub:Ljava/util/regex/Pattern;

    invoke-static {v8, v5, v2}, Lo/RetryInfoJsonAdapter;->onNavigationEvent(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    :cond_13
    if-nez v12, :cond_14

    .line 681
    invoke-static {v5}, Lo/RetryInfoJsonAdapter;->extraCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 683
    :cond_14
    invoke-static {v8, v9, v2}, Lo/RetryInfoJsonAdapter;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lo/generateLink$extraCallback;

    move-result-object v5

    if-eqz v5, :cond_15

    .line 686
    invoke-virtual {v3, v9, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v40, 0x0

    :cond_15
    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_16
    const-string v9, "#EXT-X-BYTERANGE"

    .line 690
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 691
    sget-object v9, Lo/RetryInfoJsonAdapter;->mayLaunchUrl:Ljava/util/regex/Pattern;

    invoke-static {v8, v9, v2}, Lo/RetryInfoJsonAdapter;->onNavigationEvent(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    .line 692
    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 693
    aget-object v10, v8, v9

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v47

    .line 694
    array-length v9, v8

    if-le v9, v14, :cond_a

    .line 695
    aget-object v8, v8, v14

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v29

    goto/16 :goto_3

    :cond_17
    const-string v9, "#EXT-X-DISCONTINUITY-SEQUENCE"

    .line 697
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    const/16 v10, 0x3a

    if-eqz v9, :cond_18

    .line 699
    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/2addr v1, v14

    invoke-virtual {v8, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    const/4 v1, 0x1

    goto/16 :goto_3

    :cond_18
    const-string v9, "#EXT-X-DISCONTINUITY"

    .line 700
    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19

    add-int/lit8 v49, v49, 0x1

    goto/16 :goto_3

    :cond_19
    const-string v9, "#EXT-X-PROGRAM-DATE-TIME"

    .line 702
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1a

    const-wide/16 v31, 0x0

    cmp-long v9, v18, v31

    if-nez v9, :cond_f

    .line 705
    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/2addr v9, v14

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lo/ThirdPartyAuthorizeRequest;->onTransact(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lo/$$c;->ICustomTabsCallback(J)J

    move-result-wide v8

    sub-long v18, v8, v50

    goto/16 :goto_3

    :cond_1a
    const-string v9, "#EXT-X-GAP"

    .line 708
    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    const/4 v13, 0x0

    const/16 v45, 0x1

    goto/16 :goto_0

    :cond_1b
    const-string v9, "#EXT-X-INDEPENDENT-SEGMENTS"

    .line 710
    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c

    const/4 v13, 0x0

    const/16 v26, 0x1

    goto/16 :goto_0

    :cond_1c
    const-string v9, "#EXT-X-ENDLIST"

    .line 712
    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d

    const/4 v13, 0x0

    const/16 v27, 0x1

    goto/16 :goto_0

    :cond_1d
    const-string v9, "#"

    .line 714
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_f

    if-nez v5, :cond_1e

    const/4 v9, 0x0

    goto :goto_5

    :cond_1e
    if-eqz v46, :cond_1f

    move-object/from16 v9, v46

    goto :goto_5

    .line 721
    :cond_1f
    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v9

    :goto_5
    const-wide/16 v10, 0x1

    add-long v10, v38, v10

    const-wide/16 v55, -0x1

    cmp-long v13, v47, v55

    if-nez v13, :cond_20

    const-wide/16 v58, 0x0

    goto :goto_6

    :cond_20
    move-wide/from16 v58, v29

    :goto_6
    if-nez v40, :cond_23

    .line 729
    invoke-virtual {v3}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v29

    if-nez v29, :cond_23

    .line 730
    invoke-virtual {v3}, Ljava/util/AbstractMap;->values()Ljava/util/Collection;

    move-result-object v14

    move-object/from16 v57, v3

    const/4 v0, 0x0

    new-array v3, v0, [Lo/generateLink$extraCallback;

    invoke-interface {v14, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lo/generateLink$extraCallback;

    .line 731
    new-instance v14, Lo/generateLink;

    invoke-direct {v14, v12, v3}, Lo/generateLink;-><init>(Ljava/lang/String;[Lo/generateLink$extraCallback;)V

    if-nez v28, :cond_22

    .line 733
    array-length v0, v3

    new-array v0, v0, [Lo/generateLink$extraCallback;

    move-object/from16 v61, v7

    move-wide/from16 v62, v10

    const/4 v7, 0x0

    .line 734
    :goto_7
    array-length v10, v3

    if-ge v7, v10, :cond_21

    .line 735
    aget-object v10, v3, v7

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lo/generateLink$extraCallback;->onNavigationEvent([B)Lo/generateLink$extraCallback;

    move-result-object v10

    aput-object v10, v0, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_21
    const/4 v11, 0x0

    .line 737
    new-instance v3, Lo/generateLink;

    invoke-direct {v3, v12, v0}, Lo/generateLink;-><init>(Ljava/lang/String;[Lo/generateLink$extraCallback;)V

    move-object/from16 v28, v3

    goto :goto_8

    :cond_22
    move-object/from16 v61, v7

    move-wide/from16 v62, v10

    const/4 v11, 0x0

    goto :goto_8

    :cond_23
    move-object/from16 v57, v3

    move-object/from16 v61, v7

    move-wide/from16 v62, v10

    const/4 v11, 0x0

    move-object/from16 v14, v40

    .line 741
    :goto_8
    new-instance v0, Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;

    move-object/from16 v29, v0

    .line 743
    invoke-static {v8, v2}, Lo/RetryInfoJsonAdapter;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v31, v52

    move-object/from16 v32, v37

    move-wide/from16 v33, v53

    move/from16 v35, v49

    move-wide/from16 v36, v50

    move-object/from16 v38, v14

    move-object/from16 v39, v5

    move-object/from16 v40, v9

    move-wide/from16 v41, v58

    move-wide/from16 v43, v47

    invoke-direct/range {v29 .. v45}, Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;-><init>(Ljava/lang/String;Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;Ljava/lang/String;JIJLo/generateLink;Ljava/lang/String;Ljava/lang/String;JJZ)V

    .line 741
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-long v50, v50, v53

    if-eqz v13, :cond_24

    add-long v58, v58, v47

    :cond_24
    move-wide/from16 v29, v58

    const/4 v13, 0x0

    const/16 v45, 0x0

    const-wide/16 v53, 0x0

    move-object/from16 v0, p0

    move-object/from16 v40, v14

    move-wide/from16 v47, v55

    move-object/from16 v3, v57

    move-object/from16 v7, v61

    move-object/from16 v37, v7

    move-wide/from16 v38, v62

    const/4 v14, 0x1

    goto/16 :goto_0

    :goto_9
    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, v57

    move-object/from16 v7, v61

    goto/16 :goto_0

    .line 765
    :cond_25
    new-instance v0, Lo/SessionCallResponseJsonAdapter;

    const-wide/16 v2, 0x0

    cmp-long v5, v18, v2

    if-eqz v5, :cond_26

    const/16 v60, 0x1

    goto :goto_a

    :cond_26
    const/16 v60, 0x0

    :goto_a
    move-object v3, v0

    move-object/from16 v5, p2

    move-wide/from16 v7, v16

    move-wide/from16 v9, v18

    move v11, v1

    move/from16 v12, v20

    move-wide/from16 v13, v21

    move-object v1, v15

    move/from16 v15, v23

    move-wide/from16 v16, v24

    move/from16 v18, v26

    move/from16 v19, v27

    move/from16 v20, v60

    move-object/from16 v21, v28

    move-object/from16 v22, v1

    invoke-direct/range {v3 .. v22}, Lo/SessionCallResponseJsonAdapter;-><init>(ILjava/lang/String;Ljava/util/List;JJZIJIJZZZLo/generateLink;Ljava/util/List;)V

    return-object v0
.end method

.method private static onNavigationEvent(Ljava/io/BufferedReader;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xef

    if-ne v0, v2, :cond_2

    .line 231
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v0

    const/16 v2, 0xbb

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v0

    const/16 v2, 0xbf

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    return v1

    :cond_2
    :goto_1
    const/4 v2, 0x1

    .line 237
    invoke-static {p0, v2, v0}, Lo/RetryInfoJsonAdapter;->onPostMessage(Ljava/io/BufferedReader;ZI)I

    move-result v0

    const/4 v2, 0x0

    :goto_2
    const/4 v3, 0x7

    if-ge v2, v3, :cond_4

    const-string v3, "#EXTM3U"

    .line 240
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v0, v3, :cond_3

    return v1

    .line 243
    :cond_3
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 245
    :cond_4
    invoke-static {p0, v1, v0}, Lo/RetryInfoJsonAdapter;->onPostMessage(Ljava/io/BufferedReader;ZI)I

    move-result p0

    .line 246
    invoke-static {p0}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(I)Z

    move-result p0

    return p0
.end method

.method private static onNavigationEvent(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z
    .locals 0

    .line 918
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 919
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 920
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "YES"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method private static onPostMessage(Ljava/io/BufferedReader;ZI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 251
    invoke-static {p2}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    invoke-static {p2}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 252
    :cond_0
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result p2

    goto :goto_0

    :cond_1
    return p2
.end method

.method private static onPostMessage(Ljava/util/ArrayList;Ljava/lang/String;)Lo/ShortCircuitInfo$onNavigationEvent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lo/ShortCircuitInfo$onNavigationEvent;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lo/ShortCircuitInfo$onNavigationEvent;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 540
    :goto_0
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 541
    invoke-virtual {p0, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ShortCircuitInfo$onNavigationEvent;

    .line 542
    iget-object v2, v1, Lo/ShortCircuitInfo$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lo/generateLink$extraCallback;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lo/generateLink$extraCallback;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 833
    sget-object v0, Lo/RetryInfoJsonAdapter;->IPostMessageService:Ljava/util/regex/Pattern;

    const-string v1, "1"

    .line 834
    invoke-static {p0, v0, v1, p2}, Lo/RetryInfoJsonAdapter;->onMessageChannelReady(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

    .line 835
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x2c

    const-string/jumbo v5, "video/mp4"

    if-eqz v2, :cond_0

    .line 836
    sget-object p1, Lo/RetryInfoJsonAdapter;->ICustomTabsService$Stub:Ljava/util/regex/Pattern;

    invoke-static {p0, p1, p2}, Lo/RetryInfoJsonAdapter;->onNavigationEvent(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 837
    new-instance p1, Lo/generateLink$extraCallback;

    sget-object p2, Lo/$$c;->onPostMessage:Ljava/util/UUID;

    .line 840
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-direct {p1, p2, v5, p0}, Lo/generateLink$extraCallback;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    return-object p1

    :cond_0
    const-string v2, "com.widevine"

    .line 841
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 842
    new-instance p1, Lo/generateLink$extraCallback;

    sget-object p2, Lo/$$c;->onPostMessage:Ljava/util/UUID;

    invoke-static {p0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback(Ljava/lang/String;)[B

    move-result-object p0

    const-string v0, "hls"

    invoke-direct {p1, p2, v0, p0}, Lo/generateLink$extraCallback;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    return-object p1

    :cond_1
    const-string v2, "com.microsoft.playready"

    .line 843
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 844
    sget-object p1, Lo/RetryInfoJsonAdapter;->ICustomTabsService$Stub:Ljava/util/regex/Pattern;

    invoke-static {p0, p1, p2}, Lo/RetryInfoJsonAdapter;->onNavigationEvent(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 845
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 846
    sget-object p1, Lo/$$c;->extraCallback:Ljava/util/UUID;

    invoke-static {p1, p0}, Lo/generateTrustCred;->onMessageChannelReady(Ljava/util/UUID;[B)[B

    move-result-object p0

    .line 847
    new-instance p1, Lo/generateLink$extraCallback;

    sget-object p2, Lo/$$c;->extraCallback:Ljava/util/UUID;

    invoke-direct {p1, p2, v5, p0}, Lo/generateLink$extraCallback;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    return-object p1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final onMessageChannelReady(Landroid/net/Uri;Ljava/io/InputStream;)Lo/ShortCircuitInfoJsonAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 193
    new-instance p2, Ljava/util/ArrayDeque;

    invoke-direct {p2}, Ljava/util/ArrayDeque;-><init>()V

    .line 196
    :try_start_0
    invoke-static {v0}, Lo/RetryInfoJsonAdapter;->onNavigationEvent(Ljava/io/BufferedReader;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 200
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 201
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 202
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "#EXT-X-STREAM-INF"

    .line 204
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 205
    invoke-interface {p2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 206
    new-instance v1, Lo/RetryInfoJsonAdapter$extraCallback;

    invoke-direct {v1, p2, v0}, Lo/RetryInfoJsonAdapter$extraCallback;-><init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lo/RetryInfoJsonAdapter;->ICustomTabsCallback(Lo/RetryInfoJsonAdapter$extraCallback;Ljava/lang/String;)Lo/ShortCircuitInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady(Ljava/io/Closeable;)V

    return-object p1

    :cond_1
    :try_start_1
    const-string v2, "#EXT-X-TARGETDURATION"

    .line 207
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "#EXT-X-MEDIA-SEQUENCE"

    .line 208
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "#EXTINF"

    .line 209
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "#EXT-X-KEY"

    .line 210
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "#EXT-X-BYTERANGE"

    .line 211
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "#EXT-X-DISCONTINUITY"

    .line 212
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "#EXT-X-DISCONTINUITY-SEQUENCE"

    .line 213
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "#EXT-X-ENDLIST"

    .line 214
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 219
    :cond_2
    invoke-interface {p2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 215
    :cond_3
    :goto_1
    invoke-interface {p2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v1, p0, Lo/RetryInfoJsonAdapter;->read:Lo/ShortCircuitInfo;

    new-instance v2, Lo/RetryInfoJsonAdapter$extraCallback;

    invoke-direct {v2, p2, v0}, Lo/RetryInfoJsonAdapter$extraCallback;-><init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V

    .line 217
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 216
    invoke-static {v1, v2, p1}, Lo/RetryInfoJsonAdapter;->onNavigationEvent(Lo/ShortCircuitInfo;Lo/RetryInfoJsonAdapter$extraCallback;Ljava/lang/String;)Lo/SessionCallResponseJsonAdapter;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady(Ljava/io/Closeable;)V

    return-object p1

    :cond_4
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady(Ljava/io/Closeable;)V

    .line 225
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string p2, "Failed to parse the playlist, could not identify any tags."

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 197
    :cond_5
    :try_start_2
    new-instance p2, Lcom/google/android/exoplayer2/source/UnrecognizedInputFormatException;

    const-string v1, "Input does not start with the #EXTM3U header."

    invoke-direct {p2, v1, p1}, Lcom/google/android/exoplayer2/source/UnrecognizedInputFormatException;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 223
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady(Ljava/io/Closeable;)V

    .line 224
    throw p1
.end method

.method public final synthetic onPostMessage(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-virtual {p0, p1, p2}, Lo/RetryInfoJsonAdapter;->onMessageChannelReady(Landroid/net/Uri;Ljava/io/InputStream;)Lo/ShortCircuitInfoJsonAdapter;

    move-result-object p1

    return-object p1
.end method
