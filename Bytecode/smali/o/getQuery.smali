.class public Lo/getQuery;
.super Lo/setOnCloseListener;
.source ""


# static fields
.field private static final IPostMessageService:Ljava/lang/String;


# instance fields
.field private INotificationSideChannel:I

.field private cancelAll:Lo/onItemHoverEnter$ICustomTabsCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const-class v0, Lo/getQuery;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/getQuery;->IPostMessageService:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lo/setOnCloseListener$onMessageChannelReady;I)V
    .locals 4

    .line 17
    invoke-direct {p0, p1}, Lo/setOnCloseListener;-><init>(Lo/setOnCloseListener$onMessageChannelReady;)V

    .line 18
    invoke-static {}, Lo/setOnSuggestionListener;->onNavigationEvent()Lo/setOnSuggestionListener;

    move-result-object v0

    iput-object v0, p0, Lo/setOnCloseListener;->onPostMessage:Lo/setOnSuggestionListener;

    .line 19
    new-instance v0, Lo/onItemHoverEnter$ICustomTabsCallback;

    invoke-direct {v0}, Lo/onItemHoverEnter$ICustomTabsCallback;-><init>()V

    iput-object v0, p0, Lo/getQuery;->cancelAll:Lo/onItemHoverEnter$ICustomTabsCallback;

    .line 20
    iput p2, p0, Lo/getQuery;->INotificationSideChannel:I

    .line 21
    iget-object p2, p0, Lo/setOnCloseListener;->onPostMessage:Lo/setOnSuggestionListener;

    sget-object v0, Lo/getQuery;->IPostMessageService:Ljava/lang/String;

    .line 1029
    iget-boolean p2, p2, Lo/setOnSuggestionListener;->onNavigationEvent:Z

    const-string v1, "Constructor Called"

    if-eqz p2, :cond_0

    .line 1030
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1032
    :cond_0
    sget-object p2, Lo/setOnSuggestionListener;->onPostMessage:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p2, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 23
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lo/setOnCloseListener;->onMessageChannelReady(Lo/setOnCloseListener$onMessageChannelReady;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 25
    iget-object p2, p0, Lo/setOnCloseListener;->onPostMessage:Lo/setOnSuggestionListener;

    sget-object v0, Lo/getQuery;->IPostMessageService:Ljava/lang/String;

    .line 2010
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 2011
    new-instance v2, Ljava/io/PrintWriter;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 2012
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 2013
    invoke-virtual {v1}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2061
    iget-boolean p2, p2, Lo/setOnSuggestionListener;->onNavigationEvent:Z

    if-eqz p2, :cond_1

    .line 2062
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2064
    :cond_1
    sget-object p2, Lo/setOnSuggestionListener;->onPostMessage:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p2, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 97
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 32
    iget-object v1, v0, Lo/getQuery;->cancelAll:Lo/onItemHoverEnter$ICustomTabsCallback;

    iget-object v1, v1, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    iget v2, v0, Lo/getQuery;->INotificationSideChannel:I

    aget-object v1, v1, v2

    iget-wide v1, v1, Lo/onItemHoverEnter;->ICustomTabsCallback:D

    iput-wide v1, v0, Lo/setOnCloseListener;->ICustomTabsCallback$Stub$Proxy:D

    .line 33
    iget-object v1, v0, Lo/getQuery;->cancelAll:Lo/onItemHoverEnter$ICustomTabsCallback;

    iget-object v1, v1, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    iget v2, v0, Lo/getQuery;->INotificationSideChannel:I

    aget-object v1, v1, v2

    iget-wide v1, v1, Lo/onItemHoverEnter;->onMessageChannelReady:D

    iput-wide v1, v0, Lo/setOnCloseListener;->postMessage:D

    .line 35
    iget-object v1, v0, Lo/getQuery;->cancelAll:Lo/onItemHoverEnter$ICustomTabsCallback;

    iget-object v1, v1, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    iget v2, v0, Lo/getQuery;->INotificationSideChannel:I

    aget-object v1, v1, v2

    iget v1, v1, Lo/onItemHoverEnter;->onPostMessage:I

    iput v1, v0, Lo/setOnCloseListener;->mayLaunchUrl:I

    .line 36
    iget-object v1, v0, Lo/getQuery;->cancelAll:Lo/onItemHoverEnter$ICustomTabsCallback;

    iget-object v1, v1, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    iget v2, v0, Lo/getQuery;->INotificationSideChannel:I

    aget-object v1, v1, v2

    iget v1, v1, Lo/onItemHoverEnter;->onTransact:I

    iput v1, v0, Lo/setOnCloseListener;->IPostMessageService$Stub:I

    .line 37
    iget-object v1, v0, Lo/getQuery;->cancelAll:Lo/onItemHoverEnter$ICustomTabsCallback;

    iget-object v1, v1, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    iget v2, v0, Lo/getQuery;->INotificationSideChannel:I

    aget-object v1, v1, v2

    iget v1, v1, Lo/onItemHoverEnter;->ICustomTabsCallback$Stub:I

    iput v1, v0, Lo/setOnCloseListener;->ICustomTabsService$Stub$Proxy:I

    .line 38
    iget-object v1, v0, Lo/getQuery;->cancelAll:Lo/onItemHoverEnter$ICustomTabsCallback;

    iget-object v1, v1, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    iget v2, v0, Lo/getQuery;->INotificationSideChannel:I

    aget-object v1, v1, v2

    iget v1, v1, Lo/onItemHoverEnter;->asBinder:I

    iput v1, v0, Lo/setOnCloseListener;->validateRelationship:I

    const/4 v1, 0x1

    .line 40
    iput v1, v0, Lo/setOnCloseListener;->extraCommand:I

    const/4 v1, 0x2

    .line 41
    iput v1, v0, Lo/setOnCloseListener;->updateVisuals:I

    .line 42
    iput v1, v0, Lo/setOnCloseListener;->requestPostMessageChannel:I

    const/4 v2, 0x6

    .line 43
    iput v2, v0, Lo/setOnCloseListener;->ICustomTabsService$Stub:I

    .line 46
    iput v1, v0, Lo/setOnCloseListener;->ICustomTabsCallback$Stub:I

    const v1, 0xac44

    .line 47
    iput v1, v0, Lo/setOnCloseListener;->onTransact:I

    const/16 v1, 0x1e

    .line 48
    iput v1, v0, Lo/setOnCloseListener;->asBinder:I

    .line 51
    iget-object v1, v0, Lo/getQuery;->cancelAll:Lo/onItemHoverEnter$ICustomTabsCallback;

    iget-object v1, v1, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    iget v2, v0, Lo/getQuery;->INotificationSideChannel:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lo/onItemHoverEnter;->extraCallback:[D

    iput-object v1, v0, Lo/setOnCloseListener;->onNavigationEvent:[D

    .line 52
    iget-object v1, v0, Lo/getQuery;->cancelAll:Lo/onItemHoverEnter$ICustomTabsCallback;

    iget-object v1, v1, Lo/onItemHoverEnter$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onItemHoverEnter;

    iget v2, v0, Lo/getQuery;->INotificationSideChannel:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lo/onItemHoverEnter;->onNavigationEvent:[D

    iput-object v1, v0, Lo/setOnCloseListener;->onMessageChannelReady:[D

    const/16 v1, 0xa

    .line 56
    iput v1, v0, Lo/setOnCloseListener;->ICustomTabsCallback:I

    const/16 v1, 0x24

    .line 61
    iput v1, v0, Lo/setOnCloseListener;->ICustomTabsService:I

    const/4 v1, 0x4

    .line 63
    iput v1, v0, Lo/setOnCloseListener;->newSession:I

    const/4 v1, 0x5

    .line 65
    iput v1, v0, Lo/setOnCloseListener;->onRelationshipValidationResult:I

    const-string v2, "05"

    const-string v3, "06"

    const-string v4, "07"

    const-string v5, "08"

    const-string v6, "09"

    const-string v7, "10"

    const-string v8, "11"

    const-string v9, "12"

    const-string v10, "13"

    const-string v11, "14"

    const-string v12, "15"

    const-string v13, "16"

    const-string v14, "17"

    const-string v15, "18"

    const-string v16, "19"

    const-string v17, "20"

    const-string v18, "21"

    const-string v19, "22"

    const-string v20, "23"

    const-string v21, "24"

    const-string v22, "25"

    const-string v23, "26"

    const-string v24, "27"

    const-string v25, "28"

    const-string v26, "29"

    const-string v27, "30"

    const-string v28, "31"

    const-string v29, "32"

    const-string v30, "33"

    const-string v31, "34"

    const-string v32, "35"

    const-string v33, "36"

    const-string v34, "37"

    const-string v35, "38"

    const-string v36, "39"

    const-string v37, "40"

    const-string v38, "41"

    const-string v39, "42"

    const-string v40, "43"

    const-string v41, "44"

    const-string v42, "45"

    const-string v43, "46"

    const-string v44, "47"

    const-string v45, "48"

    const-string v46, "49"

    const-string v47, "50"

    const-string v48, "51"

    const-string v49, "52"

    const-string v50, "53"

    const-string v51, "54"

    const-string v52, "55"

    const-string v53, "56"

    const-string v54, "57"

    const-string v55, "58"

    const-string v56, "59"

    const-string v57, "60"

    const-string v58, "61"

    const-string v59, "62"

    const-string v60, "63"

    const-string v61, "64"

    const-string v62, "65"

    const-string v63, "66"

    const-string v64, "67"

    const-string v65, "68"

    const-string v66, "69"

    const-string v67, "70"

    const-string v68, "71"

    const-string v69, "72"

    const-string v70, "73"

    const-string v71, "74"

    const-string v72, "75"

    const-string v73, "76"

    const-string v74, "77"

    const-string v75, "78"

    const-string v76, "79"

    const-string v77, "80"

    const-string v78, "81"

    const-string v79, "82"

    const-string v80, "83"

    const-string v81, "84"

    const-string v82, "85"

    const-string v83, "86"

    const-string v84, "87"

    const-string v85, "88"

    const-string v86, "89"

    const-string v87, "90"

    const-string v88, "91"

    const-string v89, "92"

    const-string v90, "93"

    const-string v91, "94"

    const-string v92, "95"

    const-string v93, "96"

    const-string v94, "97"

    const-string v95, "98"

    const-string v96, "99"

    .line 69
    filled-new-array/range {v2 .. v96}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, " !\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~"

    .line 81
    iput-object v2, v0, Lo/setOnCloseListener;->asInterface:Ljava/lang/String;

    const-string v3, "101000"

    const-string v4, "100100"

    const-string v5, "100010"

    const-string v6, "100001"

    const-string v7, "010100"

    const-string v8, "010010"

    const-string v9, "010001"

    const-string v10, "001010"

    const-string v11, "001001"

    const-string v12, "000101"

    .line 84
    filled-new-array/range {v3 .. v12}, [Ljava/lang/String;

    move-result-object v2

    .line 86
    iput-object v2, v0, Lo/setOnCloseListener;->warmup:[Ljava/lang/String;

    .line 87
    new-instance v2, Ljava/lang/String;

    const-string v3, "0123456789"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lo/setOnCloseListener;->getInterfaceDescriptor:Ljava/lang/String;

    .line 88
    invoke-virtual/range {p0 .. p0}, Lo/setOnCloseListener;->onNavigationEvent()V

    .line 89
    new-instance v2, Lo/setImeOptions;

    iget-object v3, v0, Lo/setOnCloseListener;->asInterface:Ljava/lang/String;

    iget v4, v0, Lo/setOnCloseListener;->newSession:I

    iget v5, v0, Lo/setOnCloseListener;->ICustomTabsService:I

    invoke-direct {v2, v1, v3, v4, v5}, Lo/setImeOptions;-><init>([Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v2, v0, Lo/setOnCloseListener;->extraCallback:Lo/setSearchableInfo;

    return-void
.end method
