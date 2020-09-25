.class final Lo/CrashFilesManager$ICustomTabsCallback$Stub;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashFilesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Stub"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lcom/mixpanel/android/viewcrawler/EditProtocol;

.field private final ICustomTabsCallback$Stub:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/trimRepeats<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private final ICustomTabsCallback$Stub$Proxy:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/trimRepeats<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private final ICustomTabsService:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/trimRepeats<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final asBinder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final asInterface:Lcom/mixpanel/android/util/ImageStore;

.field private extraCallback:Lcom/mixpanel/android/viewcrawler/EditorConnection;

.field private synthetic extraCommand:Lo/CrashFilesManager;

.field private final getInterfaceDescriptor:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/trimRepeats<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mayLaunchUrl:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/trimRepeats<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final newSession:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/CrashFilesManager$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field

.field final onMessageChannelReady:Ljava/util/concurrent/locks/Lock;

.field private onNavigationEvent:Lo/hasSessionFileDirectory;

.field private final onPostMessage:Ljava/lang/String;

.field private final onRelationshipValidationResult:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/trimRepeats<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private final onTransact:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/trimRepeats<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final warmup:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/CrashFilesManager$onPostMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/CrashFilesManager;Landroid/content/Context;Ljava/lang/String;Landroid/os/Looper;Lo/FirebaseCrashlyticsNdk$asBinder;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->extraCommand:Lo/CrashFilesManager;

    .line 291
    invoke-direct {p0, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 292
    iput-object p3, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->onPostMessage:Ljava/lang/String;

    const/4 p3, 0x0

    .line 293
    iput-object p3, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/hasSessionFileDirectory;

    .line 295
    invoke-static {p1}, Lo/CrashFilesManager;->extraCallback(Lo/CrashFilesManager;)Lo/SessionSettingsData;

    move-result-object p1

    .line 1485
    iget-object p1, p1, Lo/SessionSettingsData;->extraCommand:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 297
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 300
    :cond_0
    new-instance p3, Lo/CreateAppSpiCall$extraCallback;

    invoke-direct {p3, p1, p2}, Lo/CreateAppSpiCall$extraCallback;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 302
    new-instance p1, Lcom/mixpanel/android/util/ImageStore;

    const-string p4, "ViewCrawler"

    invoke-direct {p1, p2, p4}, Lcom/mixpanel/android/util/ImageStore;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->asInterface:Lcom/mixpanel/android/util/ImageStore;

    .line 303
    new-instance p1, Lcom/mixpanel/android/viewcrawler/EditProtocol;

    iget-object p4, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->asInterface:Lcom/mixpanel/android/util/ImageStore;

    invoke-direct {p1, p2, p3, p4, p5}, Lcom/mixpanel/android/viewcrawler/EditProtocol;-><init>(Landroid/content/Context;Lo/getAppSettingsData;Lcom/mixpanel/android/util/ImageStore;Lo/FirebaseCrashlyticsNdk$asBinder;)V

    iput-object p1, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lcom/mixpanel/android/viewcrawler/EditProtocol;

    .line 304
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->ICustomTabsCallback$Stub$Proxy:Ljava/util/Set;

    .line 305
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->onRelationshipValidationResult:Ljava/util/Map;

    .line 306
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->onTransact:Ljava/util/Map;

    .line 307
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->asBinder:Ljava/util/List;

    .line 308
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->ICustomTabsCallback$Stub:Ljava/util/Map;

    .line 309
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->warmup:Ljava/util/Set;

    .line 310
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->newSession:Ljava/util/Set;

    .line 311
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->ICustomTabsService:Ljava/util/Set;

    .line 312
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->getInterfaceDescriptor:Ljava/util/Set;

    .line 313
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->mayLaunchUrl:Ljava/util/Set;

    .line 314
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->onMessageChannelReady:Ljava/util/concurrent/locks/Lock;

    .line 315
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    return-void
.end method

.method private ICustomTabsCallback()V
    .locals 12

    const-string v0, "Can\'t close websocket writer"

    const-string v1, "MixpanelAPI.ViewCrawler"

    const-string v2, "type"

    .line 540
    iget-object v3, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->extraCallback:Lcom/mixpanel/android/viewcrawler/EditorConnection;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/mixpanel/android/viewcrawler/EditorConnection;->extraCallback()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->extraCallback:Lcom/mixpanel/android/viewcrawler/EditorConnection;

    .line 15062
    iget-object v3, v3, Lcom/mixpanel/android/viewcrawler/EditorConnection;->ICustomTabsCallback:Lcom/mixpanel/android/viewcrawler/EditorConnection$onNavigationEvent;

    .line 15391
    iget-object v3, v3, Lo/buildFeaturesSessionDataFrom;->onNavigationEvent:Lo/getSettingsFile;

    invoke-virtual {v3}, Lo/getSettingsFile;->onNavigationEvent()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_5

    .line 544
    :cond_0
    iget-object v3, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->extraCallback:Lcom/mixpanel/android/viewcrawler/EditorConnection;

    .line 16066
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Lcom/mixpanel/android/viewcrawler/EditorConnection$ICustomTabsCallback;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v6}, Lcom/mixpanel/android/viewcrawler/EditorConnection$ICustomTabsCallback;-><init>(Lcom/mixpanel/android/viewcrawler/EditorConnection;B)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 545
    new-instance v3, Landroid/util/JsonWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v5}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 548
    :try_start_0
    invoke-virtual {v3}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 549
    invoke-virtual {v3, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    const-string v5, "device_info_response"

    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    const-string v4, "payload"

    .line 550
    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v4, "device_type"

    .line 551
    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    const-string v5, "Android"

    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    const-string v4, "device_name"

    .line 552
    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    const-string v4, "scaled_density"

    .line 553
    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    iget-object v5, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->extraCommand:Lo/CrashFilesManager;

    invoke-static {v5}, Lo/CrashFilesManager;->asInterface(Lo/CrashFilesManager;)F

    move-result v5

    float-to-double v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    .line 554
    iget-object v4, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->extraCommand:Lo/CrashFilesManager;

    invoke-static {v4}, Lo/CrashFilesManager;->asBinder(Lo/CrashFilesManager;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 555
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_0

    .line 558
    :cond_1
    iget-object v4, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->extraCommand:Lo/CrashFilesManager;

    invoke-static {v4}, Lo/CrashFilesManager;->onTransact(Lo/CrashFilesManager;)Lo/UpdateAppSpiCall;

    move-result-object v4

    invoke-virtual {v4}, Lo/UpdateAppSpiCall;->extraCallback()Ljava/util/Map;

    move-result-object v4

    const-string v5, "tweaks"

    .line 559
    invoke-virtual {v3, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 560
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 561
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/UpdateAppSpiCall$extraCallback;

    .line 562
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 563
    invoke-virtual {v3}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v7, "name"

    .line 564
    invoke-virtual {v3, v7}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    const-string v5, "minimum"

    .line 565
    invoke-virtual {v3, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    .line 16228
    iget-object v7, v6, Lo/UpdateAppSpiCall$extraCallback;->onPostMessage:Ljava/lang/Number;

    .line 565
    invoke-virtual {v5, v7}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    const-string v5, "maximum"

    .line 566
    invoke-virtual {v3, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    .line 16232
    iget-object v7, v6, Lo/UpdateAppSpiCall$extraCallback;->ICustomTabsCallback:Ljava/lang/Number;

    .line 566
    invoke-virtual {v5, v7}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    .line 567
    iget v5, v6, Lo/UpdateAppSpiCall$extraCallback;->onNavigationEvent:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x1

    const-string v8, "default"

    const-string v9, "value"

    if-eq v5, v7, :cond_5

    const/4 v7, 0x2

    const-string v10, "encoding"

    const-string v11, "number"

    if-eq v5, v7, :cond_4

    const/4 v7, 0x3

    if-eq v5, v7, :cond_3

    const/4 v7, 0x4

    if-eq v5, v7, :cond_2

    .line 591
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Unrecognized Tweak Type "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v6, Lo/UpdateAppSpiCall$extraCallback;->onNavigationEvent:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " encountered."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lo/TrimmedThrowableData;->onTransact(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 586
    :cond_2
    invoke-virtual {v3, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    const-string v7, "string"

    invoke-virtual {v5, v7}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 587
    invoke-virtual {v3, v9}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    invoke-virtual {v6}, Lo/UpdateAppSpiCall$extraCallback;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 588
    invoke-virtual {v3, v8}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    .line 19236
    iget-object v6, v6, Lo/UpdateAppSpiCall$extraCallback;->onMessageChannelReady:Ljava/lang/Object;

    .line 588
    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto/16 :goto_2

    .line 580
    :cond_3
    invoke-virtual {v3, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 581
    invoke-virtual {v3, v10}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    const-string v7, "l"

    invoke-virtual {v5, v7}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 582
    invoke-virtual {v3, v9}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    invoke-virtual {v6}, Lo/UpdateAppSpiCall$extraCallback;->onMessageChannelReady()Ljava/lang/Number;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 583
    invoke-virtual {v3, v8}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    .line 18236
    iget-object v6, v6, Lo/UpdateAppSpiCall$extraCallback;->onMessageChannelReady:Ljava/lang/Object;

    .line 583
    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    goto :goto_2

    .line 574
    :cond_4
    invoke-virtual {v3, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 575
    invoke-virtual {v3, v10}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    const-string v7, "d"

    invoke-virtual {v5, v7}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 576
    invoke-virtual {v3, v9}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    invoke-virtual {v6}, Lo/UpdateAppSpiCall$extraCallback;->onMessageChannelReady()Ljava/lang/Number;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    .line 577
    invoke-virtual {v3, v8}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    .line 17236
    iget-object v6, v6, Lo/UpdateAppSpiCall$extraCallback;->onMessageChannelReady:Ljava/lang/Object;

    .line 577
    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    goto :goto_2

    .line 569
    :cond_5
    invoke-virtual {v3, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    const-string v7, "boolean"

    invoke-virtual {v5, v7}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 570
    invoke-virtual {v3, v9}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    invoke-virtual {v6}, Lo/UpdateAppSpiCall$extraCallback;->onPostMessage()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v5, v7}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 571
    invoke-virtual {v3, v8}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    .line 16236
    iget-object v6, v6, Lo/UpdateAppSpiCall$extraCallback;->onMessageChannelReady:Ljava/lang/Object;

    .line 571
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 593
    :goto_2
    invoke-virtual {v3}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    goto/16 :goto_1

    .line 595
    :cond_6
    invoke-virtual {v3}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 596
    invoke-virtual {v3}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 597
    invoke-virtual {v3}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 602
    :try_start_2
    invoke-virtual {v3}, Landroid/util/JsonWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v2

    .line 604
    invoke-static {v1, v0, v2}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_1
    move-exception v2

    :try_start_3
    const-string v4, "Can\'t write device_info to server"

    .line 599
    invoke-static {v1, v4, v2}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 602
    :try_start_4
    invoke-virtual {v3}, Landroid/util/JsonWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    return-void

    :catch_2
    move-exception v2

    .line 604
    invoke-static {v1, v0, v2}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 602
    :goto_3
    :try_start_5
    invoke-virtual {v3}, Landroid/util/JsonWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v3

    .line 604
    invoke-static {v1, v0, v3}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 606
    :goto_4
    throw v2

    :cond_7
    :goto_5
    return-void
.end method

.method private ICustomTabsCallback(Ljava/lang/String;Z)V
    .locals 12

    if-eqz p1, :cond_6

    .line 409
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 411
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_5

    .line 413
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "id"

    .line 414
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "experiment_id"

    .line 415
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 416
    new-instance v6, Lo/trimRepeats;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v6, v5, v4}, Lo/trimRepeats;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v4, "actions"

    .line 418
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 419
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x0

    :goto_1
    const-string v8, "name"

    if-ge v7, v5, :cond_1

    .line 421
    :try_start_1
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "target_activity"

    .line 12021
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 12022
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    :cond_0
    const/4 v10, 0x0

    .line 423
    :goto_2
    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 424
    new-instance v11, Lo/CrashFilesManager$onPostMessage;

    invoke-direct {v11, v8, v10, v9, v6}, Lo/CrashFilesManager$onPostMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lo/trimRepeats;)V

    .line 425
    iget-object v8, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->warmup:Ljava/util/Set;

    invoke-interface {v8, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    const-string v4, "tweaks"

    .line 428
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 429
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v4, :cond_2

    .line 431
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 432
    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 433
    new-instance v11, Lo/CrashFilesManager$ICustomTabsCallback;

    invoke-direct {v11, v10, v9, v6}, Lo/CrashFilesManager$ICustomTabsCallback;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lo/trimRepeats;)V

    .line 434
    iget-object v9, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->newSession:Ljava/util/Set;

    invoke-interface {v9, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_2
    if-nez p2, :cond_3

    .line 438
    iget-object v3, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->mayLaunchUrl:Ljava/util/Set;

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    if-nez v4, :cond_4

    if-nez v5, :cond_4

    .line 442
    iget-object v3, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->ICustomTabsService:Ljava/util/Set;

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    return-void

    :catch_0
    move-exception p1

    const-string p2, "MixpanelAPI.ViewCrawler"

    const-string v0, "JSON error when loading ab tests / tweaks, clearing persistent memory"

    .line 446
    invoke-static {p2, v0, p1}, Lo/TrimmedThrowableData;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 447
    invoke-direct {p0}, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->onMessageChannelReady()Landroid/content/SharedPreferences;

    move-result-object p1

    .line 448
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "mixpanel.viewcrawler.changes"

    .line 449
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 450
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_6
    return-void
.end method

.method private ICustomTabsCallback(Lorg/json/JSONObject;)V
    .locals 7

    const-string v0, "Bad tweaks received"

    const-string v1, "MixpanelAPI.ViewCrawler"

    :try_start_0
    const-string v2, "payload"

    .line 770
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "tweaks"

    .line 771
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 772
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 774
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 775
    invoke-static {v4}, Lcom/mixpanel/android/viewcrawler/EditProtocol;->ICustomTabsCallback(Lorg/json/JSONObject;)Lo/trimRepeats;

    move-result-object v4

    .line 776
    iget-object v5, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->onTransact:Ljava/util/Map;

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 781
    invoke-static {v1, v0, p1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 779
    invoke-static {v1, v0, p1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 784
    :cond_0
    :goto_1
    invoke-direct {p0}, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->extraCallback()V

    return-void
.end method

.method private extraCallback()V
    .locals 11

    .line 882
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 883
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 884
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 887
    iget-object v3, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->warmup:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "Can\'t load assets for an edit, won\'t apply the change now"

    const-string v6, "MixpanelAPI.ViewCrawler"

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/CrashFilesManager$onPostMessage;

    .line 889
    :try_start_0
    iget-object v7, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lcom/mixpanel/android/viewcrawler/EditProtocol;

    iget-object v8, v4, Lo/CrashFilesManager$onPostMessage;->onMessageChannelReady:Lorg/json/JSONObject;

    invoke-virtual {v7, v8}, Lcom/mixpanel/android/viewcrawler/EditProtocol;->onNavigationEvent(Lorg/json/JSONObject;)Lcom/mixpanel/android/viewcrawler/EditProtocol$onNavigationEvent;

    move-result-object v7

    .line 890
    new-instance v8, Lo/trimRepeats;

    iget-object v9, v4, Lo/CrashFilesManager$onPostMessage;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v7, v7, Lcom/mixpanel/android/viewcrawler/EditProtocol$onNavigationEvent;->onNavigationEvent:Lo/FirebaseCrashlyticsNdk;

    invoke-direct {v8, v9, v7}, Lo/trimRepeats;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 891
    iget-object v7, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->mayLaunchUrl:Ljava/util/Set;

    iget-object v8, v4, Lo/CrashFilesManager$onPostMessage;->onNavigationEvent:Lo/trimRepeats;

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 892
    iget-object v4, v4, Lo/CrashFilesManager$onPostMessage;->onNavigationEvent:Lo/trimRepeats;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/mixpanel/android/viewcrawler/EditProtocol$CantGetEditAssetsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/mixpanel/android/viewcrawler/EditProtocol$InapplicableInstructionsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "Bad persistent change request cannot be applied."

    .line 899
    invoke-static {v6, v5, v4}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v4

    .line 897
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lo/TrimmedThrowableData;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v4

    .line 895
    invoke-static {v6, v5, v4}, Lo/TrimmedThrowableData;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 905
    :cond_1
    iget-object v3, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->newSession:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/CrashFilesManager$ICustomTabsCallback;

    .line 907
    :try_start_1
    iget-object v7, v4, Lo/CrashFilesManager$ICustomTabsCallback;->onPostMessage:Lorg/json/JSONObject;

    invoke-static {v7}, Lcom/mixpanel/android/viewcrawler/EditProtocol;->ICustomTabsCallback(Lorg/json/JSONObject;)Lo/trimRepeats;

    move-result-object v7

    .line 909
    iget-object v8, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->mayLaunchUrl:Ljava/util/Set;

    iget-object v9, v4, Lo/CrashFilesManager$ICustomTabsCallback;->onMessageChannelReady:Lo/trimRepeats;

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 910
    iget-object v8, v4, Lo/CrashFilesManager$ICustomTabsCallback;->onMessageChannelReady:Lo/trimRepeats;

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 911
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 912
    :cond_3
    iget-object v8, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->extraCommand:Lo/CrashFilesManager;

    invoke-static {v8}, Lo/CrashFilesManager;->onTransact(Lo/CrashFilesManager;)Lo/UpdateAppSpiCall;

    move-result-object v8

    iget-object v9, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v10, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Lo/UpdateAppSpiCall;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 913
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 916
    :cond_4
    :goto_2
    iget-object v8, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->extraCommand:Lo/CrashFilesManager;

    invoke-static {v8}, Lo/CrashFilesManager;->onTransact(Lo/CrashFilesManager;)Lo/UpdateAppSpiCall;

    move-result-object v8

    invoke-virtual {v8}, Lo/UpdateAppSpiCall;->extraCallback()Ljava/util/Map;

    move-result-object v8

    iget-object v9, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 917
    iget-object v4, v4, Lo/CrashFilesManager$ICustomTabsCallback;->onPostMessage:Lorg/json/JSONObject;

    invoke-static {v4}, Lo/UpdateAppSpiCall$extraCallback;->onPostMessage(Lorg/json/JSONObject;)Lo/UpdateAppSpiCall$extraCallback;

    move-result-object v4

    .line 918
    iget-object v8, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->extraCommand:Lo/CrashFilesManager;

    invoke-static {v8}, Lo/CrashFilesManager;->onTransact(Lo/CrashFilesManager;)Lo/UpdateAppSpiCall;

    move-result-object v8

    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_2

    if-nez v4, :cond_5

    goto :goto_1

    .line 21468
    :cond_5
    iget-object v8, v8, Lo/UpdateAppSpiCall;->onMessageChannelReady:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v8, v7, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 920
    :cond_6
    iget-object v4, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->extraCommand:Lo/CrashFilesManager;

    invoke-static {v4}, Lo/CrashFilesManager;->onTransact(Lo/CrashFilesManager;)Lo/UpdateAppSpiCall;

    move-result-object v4

    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v4, v8, v7}, Lo/UpdateAppSpiCall;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    :catch_3
    move-exception v4

    const-string v7, "Bad editor tweak cannot be applied."

    .line 923
    invoke-static {v6, v7, v4}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 927
    :cond_7
    iget-object v3, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->newSession:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_9

    .line 928
    iget-object v3, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->extraCommand:Lo/CrashFilesManager;

    invoke-static {v3}, Lo/CrashFilesManager;->onTransact(Lo/CrashFilesManager;)Lo/UpdateAppSpiCall;

    move-result-object v3

    invoke-virtual {v3}, Lo/UpdateAppSpiCall;->onMessageChannelReady()Ljava/util/Map;

    move-result-object v3

    .line 929
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 930
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/UpdateAppSpiCall$extraCallback;

    .line 931
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 932
    iget-object v8, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->extraCommand:Lo/CrashFilesManager;

    invoke-static {v8}, Lo/CrashFilesManager;->onTransact(Lo/CrashFilesManager;)Lo/UpdateAppSpiCall;

    move-result-object v8

    .line 22240
    iget-object v9, v7, Lo/UpdateAppSpiCall$extraCallback;->extraCallback:Ljava/lang/Object;

    .line 932
    invoke-virtual {v8, v4, v9}, Lo/UpdateAppSpiCall;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 933
    iget-object v8, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->extraCommand:Lo/CrashFilesManager;

    invoke-static {v8}, Lo/CrashFilesManager;->onTransact(Lo/CrashFilesManager;)Lo/UpdateAppSpiCall;

    move-result-object v8

    .line 23240
    iget-object v7, v7, Lo/UpdateAppSpiCall$extraCallback;->extraCallback:Ljava/lang/Object;

    .line 933
    invoke-virtual {v8, v4, v7}, Lo/UpdateAppSpiCall;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 934
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 941
    :cond_9
    iget-object v3, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->onRelationshipValidationResult:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/trimRepeats;

    .line 943
    :try_start_2
    iget-object v7, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lcom/mixpanel/android/viewcrawler/EditProtocol;

    iget-object v8, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Lorg/json/JSONObject;

    invoke-virtual {v7, v8}, Lcom/mixpanel/android/viewcrawler/EditProtocol;->onNavigationEvent(Lorg/json/JSONObject;)Lcom/mixpanel/android/viewcrawler/EditProtocol$onNavigationEvent;

    move-result-object v7

    .line 944
    new-instance v8, Lo/trimRepeats;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v9, v7, Lcom/mixpanel/android/viewcrawler/EditProtocol$onNavigationEvent;->onNavigationEvent:Lo/FirebaseCrashlyticsNdk;

    invoke-direct {v8, v4, v9}, Lo/trimRepeats;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 945
    iget-object v4, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->asBinder:Ljava/util/List;

    iget-object v7, v7, Lcom/mixpanel/android/viewcrawler/EditProtocol$onNavigationEvent;->extraCallback:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catch Lcom/mixpanel/android/viewcrawler/EditProtocol$CantGetEditAssetsException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lcom/mixpanel/android/viewcrawler/EditProtocol$InapplicableInstructionsException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_4

    :catch_4
    move-exception v4

    const-string v7, "Bad editor change request cannot be applied."

    .line 951
    invoke-static {v6, v7, v4}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_5
    move-exception v4

    .line 949
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lo/TrimmedThrowableData;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_6
    move-exception v4

    .line 947
    invoke-static {v6, v5, v4}, Lo/TrimmedThrowableData;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 957
    :cond_a
    iget-object v3, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->onTransact:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/trimRepeats;

    .line 958
    iget-object v5, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->extraCommand:Lo/CrashFilesManager;

    invoke-static {v5}, Lo/CrashFilesManager;->onTransact(Lo/CrashFilesManager;)Lo/UpdateAppSpiCall;

    move-result-object v5

    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v5, v7, v8}, Lo/UpdateAppSpiCall;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 959
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 961
    :cond_b
    iget-object v5, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->extraCommand:Lo/CrashFilesManager;

    invoke-static {v5}, Lo/CrashFilesManager;->onTransact(Lo/CrashFilesManager;)Lo/UpdateAppSpiCall;

    move-result-object v5

    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v5, v7, v4}, Lo/UpdateAppSpiCall;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    .line 966
    :cond_c
    iget-object v3, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->ICustomTabsCallback$Stub:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->ICustomTabsCallback$Stub$Proxy:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_d

    .line 967
    iget-object v3, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->getInterfaceDescriptor:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/trimRepeats;

    .line 969
    :try_start_3
    iget-object v5, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lcom/mixpanel/android/viewcrawler/EditProtocol;

    iget-object v7, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Lorg/json/JSONObject;

    iget-object v8, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->extraCommand:Lo/CrashFilesManager;

    invoke-static {v8}, Lo/CrashFilesManager;->onRelationshipValidationResult(Lo/CrashFilesManager;)Lo/UnityVersionProvider;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/mixpanel/android/viewcrawler/EditProtocol;->ICustomTabsCallback(Lorg/json/JSONObject;Lo/FirebaseCrashlyticsNdk$onRelationshipValidationResult;)Lo/FirebaseCrashlyticsNdk;

    move-result-object v5

    .line 970
    new-instance v7, Lo/trimRepeats;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-direct {v7, v4, v5}, Lo/trimRepeats;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lcom/mixpanel/android/viewcrawler/EditProtocol$InapplicableInstructionsException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Lcom/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException; {:try_start_3 .. :try_end_3} :catch_7

    goto :goto_6

    :catch_7
    move-exception v4

    const-string v5, "Bad persistent event binding cannot be applied."

    .line 974
    invoke-static {v6, v5, v4}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_8
    move-exception v4

    .line 972
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lo/TrimmedThrowableData;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 981
    :cond_d
    iget-object v3, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->ICustomTabsCallback$Stub:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/trimRepeats;

    .line 983
    :try_start_4
    iget-object v5, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lcom/mixpanel/android/viewcrawler/EditProtocol;

    iget-object v7, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Lorg/json/JSONObject;

    iget-object v8, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->extraCommand:Lo/CrashFilesManager;

    invoke-static {v8}, Lo/CrashFilesManager;->onRelationshipValidationResult(Lo/CrashFilesManager;)Lo/UnityVersionProvider;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/mixpanel/android/viewcrawler/EditProtocol;->ICustomTabsCallback(Lorg/json/JSONObject;Lo/FirebaseCrashlyticsNdk$onRelationshipValidationResult;)Lo/FirebaseCrashlyticsNdk;

    move-result-object v5

    .line 984
    new-instance v7, Lo/trimRepeats;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-direct {v7, v4, v5}, Lo/trimRepeats;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lcom/mixpanel/android/viewcrawler/EditProtocol$InapplicableInstructionsException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Lcom/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException; {:try_start_4 .. :try_end_4} :catch_9

    goto :goto_7

    :catch_9
    move-exception v4

    const-string v5, "Bad editor event binding cannot be applied."

    .line 988
    invoke-static {v6, v5, v4}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    :catch_a
    move-exception v4

    .line 986
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lo/TrimmedThrowableData;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 993
    :cond_e
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 994
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_8
    if-ge v5, v4, :cond_10

    .line 996
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/trimRepeats;

    .line 998
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v3, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 999
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    goto :goto_9

    .line 1001
    :cond_f
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1002
    iget-object v8, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v3, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    :goto_9
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 1007
    :cond_10
    iget-object v0, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->extraCommand:Lo/CrashFilesManager;

    invoke-static {v0}, Lo/CrashFilesManager;->onNavigationEvent(Lo/CrashFilesManager;)Lo/ResourceUnityVersionProvider;

    move-result-object v0

    invoke-virtual {v0, v3}, Lo/ResourceUnityVersionProvider;->ICustomTabsCallback(Ljava/util/Map;)V

    .line 1008
    iget-object v0, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->ICustomTabsService:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/trimRepeats;

    .line 1009
    iget-object v4, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->mayLaunchUrl:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 1010
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 1013
    :cond_12
    iget-object v0, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->mayLaunchUrl:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1014
    invoke-direct {p0, v1}, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->onPostMessage(Ljava/util/Set;)V

    .line 1015
    iget-object v0, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->ICustomTabsService:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1016
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_13

    .line 1017
    iget-object v0, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->extraCommand:Lo/CrashFilesManager;

    invoke-static {v0}, Lo/CrashFilesManager;->ICustomTabsCallback$Stub(Lo/CrashFilesManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/SettingsRequest;

    .line 1018
    invoke-interface {v1}, Lo/SettingsRequest;->onMessageChannelReady()V

    goto :goto_b

    :cond_13
    return-void
.end method

.method private extraCallback(Ljava/lang/String;)V
    .locals 7

    const-string v0, "Could not close output writer to editor"

    const-string v1, "MixpanelAPI.ViewCrawler"

    .line 508
    iget-object v2, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->extraCallback:Lcom/mixpanel/android/viewcrawler/EditorConnection;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/mixpanel/android/viewcrawler/EditorConnection;->extraCallback()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->extraCallback:Lcom/mixpanel/android/viewcrawler/EditorConnection;

    .line 13062
    iget-object v2, v2, Lcom/mixpanel/android/viewcrawler/EditorConnection;->ICustomTabsCallback:Lcom/mixpanel/android/viewcrawler/EditorConnection$onNavigationEvent;

    .line 13391
    iget-object v2, v2, Lo/buildFeaturesSessionDataFrom;->onNavigationEvent:Lo/getSettingsFile;

    invoke-virtual {v2}, Lo/getSettingsFile;->onNavigationEvent()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_3

    .line 512
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "error_message"

    .line 514
    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v3, "Apparently impossible JSONException"

    .line 516
    invoke-static {v1, v3, p1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 519
    :goto_0
    new-instance p1, Ljava/io/OutputStreamWriter;

    iget-object v3, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->extraCallback:Lcom/mixpanel/android/viewcrawler/EditorConnection;

    .line 14066
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Lcom/mixpanel/android/viewcrawler/EditorConnection$ICustomTabsCallback;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v6}, Lcom/mixpanel/android/viewcrawler/EditorConnection$ICustomTabsCallback;-><init>(Lcom/mixpanel/android/viewcrawler/EditorConnection;B)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 519
    invoke-direct {p1, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    :try_start_1
    const-string v3, "{\"type\": \"error\", "

    .line 521
    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v3, "\"payload\": "

    .line 522
    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 523
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v2, "}"

    .line 524
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 529
    :try_start_2
    invoke-virtual {p1}, Ljava/io/Writer;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 531
    invoke-static {v1, v0, p1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v2

    :try_start_3
    const-string v3, "Can\'t write error message to editor"

    .line 526
    invoke-static {v1, v3, v2}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 529
    :try_start_4
    invoke-virtual {p1}, Ljava/io/Writer;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    return-void

    :catch_3
    move-exception p1

    .line 531
    invoke-static {v1, v0, p1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 529
    :goto_1
    :try_start_5
    invoke-virtual {p1}, Ljava/io/Writer;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    :catch_4
    move-exception p1

    .line 531
    invoke-static {v1, v0, p1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 533
    :goto_2
    throw v2

    :cond_1
    :goto_3
    return-void
.end method

.method private extraCallback(Lorg/json/JSONObject;)V
    .locals 3

    :try_start_0
    const-string v0, "payload"

    .line 753
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "actions"

    .line 754
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 757
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 758
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 759
    iget-object v2, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->onRelationshipValidationResult:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MixpanelAPI.ViewCrawler"

    const-string v1, "Bad clear request received"

    .line 762
    invoke-static {v0, v1, p1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 765
    :cond_0
    invoke-direct {p0}, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->extraCallback()V

    return-void
.end method

.method private onMessageChannelReady()Landroid/content/SharedPreferences;
    .locals 3

    .line 1059
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mixpanel.viewcrawler.changes"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1060
    iget-object v1, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->extraCommand:Lo/CrashFilesManager;

    invoke-static {v1}, Lo/CrashFilesManager;->onMessageChannelReady(Lo/CrashFilesManager;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private onMessageChannelReady(Lorg/json/JSONObject;)V
    .locals 9

    const-string v0, "MixpanelAPI.ViewCrawler"

    :try_start_0
    const-string v1, "payload"

    .line 816
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "events"

    .line 817
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 823
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 825
    iget-object v2, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->ICustomTabsCallback$Stub:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 826
    iget-object v2, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->getInterfaceDescriptor:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    const-string v3, "path"

    if-nez v2, :cond_1

    iget-object v2, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->ICustomTabsCallback$Stub$Proxy:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 827
    iget-object v2, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->ICustomTabsCallback$Stub$Proxy:Ljava/util/Set;

    iget-object v4, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->getInterfaceDescriptor:Ljava/util/Set;

    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 828
    iget-object v2, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->getInterfaceDescriptor:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/trimRepeats;

    .line 830
    :try_start_1
    iget-object v5, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->ICustomTabsCallback$Stub:Ljava/util/Map;

    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lorg/json/JSONObject;

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 832
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 835
    :cond_0
    iget-object v2, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->getInterfaceDescriptor:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    .line 839
    :try_start_2
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "target_activity"

    .line 21021
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 21022
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 841
    :goto_2
    iget-object v6, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->ICustomTabsCallback$Stub:Ljava/util/Map;

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lo/trimRepeats;

    invoke-direct {v8, v5, v4}, Lo/trimRepeats;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v4

    .line 843
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Bad event binding received from editor in "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v4}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 847
    :cond_3
    invoke-direct {p0}, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->extraCallback()V

    return-void

    :catch_2
    move-exception p1

    const-string v1, "Bad event bindings received"

    .line 819
    invoke-static {v0, v1, p1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private onNavigationEvent(Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_2

    .line 458
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 459
    iget-object p1, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->getInterfaceDescriptor:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    const/4 p1, 0x0

    .line 460
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 461
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "target_activity"

    .line 13021
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 13022
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 463
    :goto_1
    iget-object v3, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->getInterfaceDescriptor:Ljava/util/Set;

    new-instance v4, Lo/trimRepeats;

    invoke-direct {v4, v2, v1}, Lo/trimRepeats;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "MixpanelAPI.ViewCrawler"

    const-string v1, "JSON error when loading event bindings, clearing persistent memory"

    .line 466
    invoke-static {v0, v1, p1}, Lo/TrimmedThrowableData;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 467
    invoke-direct {p0}, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->onMessageChannelReady()Landroid/content/SharedPreferences;

    move-result-object p1

    .line 468
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "mixpanel.viewcrawler.bindings"

    .line 469
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 470
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    return-void
.end method

.method private onPostMessage()V
    .locals 4

    .line 854
    iget-object v0, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->onRelationshipValidationResult:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 855
    iget-object v0, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->ICustomTabsCallback$Stub:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 856
    iget-object v0, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->onTransact:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 857
    iget-object v0, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->getInterfaceDescriptor:Ljava/util/Set;

    iget-object v1, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->ICustomTabsCallback$Stub$Proxy:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 858
    iget-object v0, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->ICustomTabsCallback$Stub$Proxy:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    .line 861
    iput-object v0, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/hasSessionFileDirectory;

    const-string v0, "MixpanelAPI.ViewCrawler"

    const-string v1, "Editor closed- freeing snapshot"

    .line 863
    invoke-static {v0, v1}, Lo/TrimmedThrowableData;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    invoke-direct {p0}, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->extraCallback()V

    .line 866
    iget-object v0, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->asBinder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 867
    iget-object v2, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->asInterface:Lcom/mixpanel/android/util/ImageStore;

    .line 21162
    invoke-virtual {v2, v1}, Lcom/mixpanel/android/util/ImageStore;->ICustomTabsCallback(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 21164
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 21194
    sget-object v2, Lcom/mixpanel/android/util/ImageStore;->ICustomTabsCallback:Landroid/util/LruCache;

    monitor-enter v2

    .line 21195
    :try_start_0
    sget-object v3, Lcom/mixpanel/android/util/ImageStore;->ICustomTabsCallback:Landroid/util/LruCache;

    invoke-virtual {v3, v1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21196
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    return-void
.end method

.method private onPostMessage(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lo/trimRepeats<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 1024
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1025
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1028
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/trimRepeats;

    .line 1029
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 1030
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 1032
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "$experiment_id"

    .line 1033
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "$variant_id"

    .line 1034
    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1036
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1038
    iget-object v1, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->extraCommand:Lo/CrashFilesManager;

    invoke-static {v1}, Lo/CrashFilesManager;->ICustomTabsCallback(Lo/CrashFilesManager;)Lo/Settings;

    move-result-object v1

    .line 24206
    iget-object v1, v1, Lo/Settings;->ICustomTabsCallback:Lo/Settings$extraCallback;

    const-string v2, "$experiments"

    .line 1038
    invoke-interface {v1, v2, v0}, Lo/Settings$onMessageChannelReady;->onMessageChannelReady(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1039
    iget-object v1, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->extraCommand:Lo/CrashFilesManager;

    invoke-static {v1}, Lo/CrashFilesManager;->ICustomTabsCallback(Lo/CrashFilesManager;)Lo/Settings;

    move-result-object v1

    new-instance v2, Lo/CrashFilesManager$ICustomTabsCallback$Stub$1;

    invoke-direct {v2, v0}, Lo/CrashFilesManager$ICustomTabsCallback$Stub$1;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Lo/Settings;->onMessageChannelReady(Lo/applyNonNullHeader;)V

    .line 1050
    iget-object v1, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->extraCommand:Lo/CrashFilesManager;

    invoke-static {v1}, Lo/CrashFilesManager;->ICustomTabsCallback(Lo/CrashFilesManager;)Lo/Settings;

    move-result-object v1

    const-string v2, "$experiment_started"

    invoke-virtual {v1, v2, v3}, Lo/Settings;->extraCallback(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string v0, "MixpanelAPI.ViewCrawler"

    const-string v1, "Could not build JSON for reporting experiment start"

    .line 1053
    invoke-static {v0, v1, p1}, Lo/TrimmedThrowableData;->asInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method private onPostMessage(Lorg/json/JSONObject;)V
    .locals 6

    :try_start_0
    const-string v0, "payload"

    .line 732
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "actions"

    .line 733
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 735
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 736
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "target_activity"

    .line 20021
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 20022
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const-string v3, "name"

    .line 738
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 739
    iget-object v4, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->onRelationshipValidationResult:Ljava/util/Map;

    new-instance v5, Lo/trimRepeats;

    invoke-direct {v5, v2, v1}, Lo/trimRepeats;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 742
    :cond_1
    invoke-direct {p0}, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->extraCallback()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "MixpanelAPI.ViewCrawler"

    const-string v1, "Bad change request received"

    .line 744
    invoke-static {v0, v1, p1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 11

    const-string v0, "}"

    const-string v1, "Payload with snapshot config required with snapshot request"

    .line 324
    iget-object v2, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->onMessageChannelReady:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 327
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const-string v3, "Can\'t write track_message to server"

    const-string v4, "type"

    const-string v5, "payload"

    const-string v6, "mixpanel.viewcrawler.bindings"

    const-string v7, "mixpanel.viewcrawler.changes"

    const/4 v8, 0x0

    const-string v9, "Can\'t close writer."

    const-string v10, "MixpanelAPI.ViewCrawler"

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_b

    .line 369
    :pswitch_0
    :try_start_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONArray;

    .line 11400
    invoke-direct {p0}, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->onMessageChannelReady()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 11401
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 11402
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v7, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 11403
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_b

    .line 345
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/FirebaseCrashlyticsNdk$onNavigationEvent;

    .line 6702
    iget-object v0, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->extraCallback:Lcom/mixpanel/android/viewcrawler/EditorConnection;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->extraCallback:Lcom/mixpanel/android/viewcrawler/EditorConnection;

    invoke-virtual {v0}, Lcom/mixpanel/android/viewcrawler/EditorConnection;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->extraCallback:Lcom/mixpanel/android/viewcrawler/EditorConnection;

    .line 7062
    iget-object v0, v0, Lcom/mixpanel/android/viewcrawler/EditorConnection;->ICustomTabsCallback:Lcom/mixpanel/android/viewcrawler/EditorConnection$onNavigationEvent;

    .line 7391
    iget-object v0, v0, Lo/buildFeaturesSessionDataFrom;->onNavigationEvent:Lo/getSettingsFile;

    invoke-virtual {v0}, Lo/getSettingsFile;->onNavigationEvent()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_b

    .line 6706
    :cond_0
    iget-object v0, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->extraCallback:Lcom/mixpanel/android/viewcrawler/EditorConnection;

    .line 8066
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Lcom/mixpanel/android/viewcrawler/EditorConnection$ICustomTabsCallback;

    invoke-direct {v2, v0, v8}, Lcom/mixpanel/android/viewcrawler/EditorConnection$ICustomTabsCallback;-><init>(Lcom/mixpanel/android/viewcrawler/EditorConnection;B)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 6707
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 6708
    new-instance v1, Landroid/util/JsonWriter;

    invoke-direct {v1, v0}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 6711
    :try_start_2
    invoke-virtual {v1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 6712
    invoke-virtual {v1, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    const-string v2, "layout_error"

    invoke-virtual {v0, v2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    const-string v0, "exception_type"

    .line 6713
    invoke-virtual {v1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    .line 9053
    iget-object v2, p1, Lo/FirebaseCrashlyticsNdk$onNavigationEvent;->onPostMessage:Ljava/lang/String;

    .line 6713
    invoke-virtual {v0, v2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    const-string v0, "cid"

    .line 6714
    invoke-virtual {v1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    .line 9057
    iget-object p1, p1, Lo/FirebaseCrashlyticsNdk$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    .line 6714
    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 6715
    invoke-virtual {v1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6720
    :try_start_3
    invoke-virtual {v1}, Landroid/util/JsonWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto/16 :goto_b

    :catch_0
    move-exception p1

    .line 6722
    :goto_0
    :try_start_4
    invoke-static {v10, v9, p1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto/16 :goto_b

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 6717
    :try_start_5
    invoke-static {v10, v3, p1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 6720
    :try_start_6
    invoke-virtual {v1}, Landroid/util/JsonWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto/16 :goto_b

    :catch_2
    move-exception p1

    goto :goto_0

    :goto_1
    :try_start_7
    invoke-virtual {v1}, Landroid/util/JsonWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catch_3
    move-exception v0

    .line 6722
    :try_start_8
    invoke-static {v10, v9, v0}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6724
    :goto_2
    throw p1

    .line 363
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->ICustomTabsCallback(Lorg/json/JSONObject;)V

    goto/16 :goto_b

    .line 360
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->extraCallback(Lorg/json/JSONObject;)V

    goto/16 :goto_b

    .line 348
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONArray;

    .line 10400
    invoke-direct {p0}, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->onMessageChannelReady()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 10401
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 10402
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 10403
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 9792
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->ICustomTabsCallback(Ljava/lang/String;Z)V

    .line 9793
    invoke-direct {p0}, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->extraCallback()V

    goto/16 :goto_b

    .line 366
    :pswitch_5
    invoke-direct {p0}, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->onPostMessage()V

    goto/16 :goto_b

    .line 342
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 4671
    iget-object v0, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->extraCallback:Lcom/mixpanel/android/viewcrawler/EditorConnection;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->extraCallback:Lcom/mixpanel/android/viewcrawler/EditorConnection;

    invoke-virtual {v0}, Lcom/mixpanel/android/viewcrawler/EditorConnection;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->extraCallback:Lcom/mixpanel/android/viewcrawler/EditorConnection;

    .line 5062
    iget-object v0, v0, Lcom/mixpanel/android/viewcrawler/EditorConnection;->ICustomTabsCallback:Lcom/mixpanel/android/viewcrawler/EditorConnection$onNavigationEvent;

    .line 5391
    iget-object v0, v0, Lo/buildFeaturesSessionDataFrom;->onNavigationEvent:Lo/getSettingsFile;

    invoke-virtual {v0}, Lo/getSettingsFile;->onNavigationEvent()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_b

    .line 4675
    :cond_1
    iget-object v0, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->extraCallback:Lcom/mixpanel/android/viewcrawler/EditorConnection;

    .line 6066
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Lcom/mixpanel/android/viewcrawler/EditorConnection$ICustomTabsCallback;

    invoke-direct {v2, v0, v8}, Lcom/mixpanel/android/viewcrawler/EditorConnection$ICustomTabsCallback;-><init>(Lcom/mixpanel/android/viewcrawler/EditorConnection;B)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 4676
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 4677
    new-instance v1, Landroid/util/JsonWriter;

    invoke-direct {v1, v0}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 4680
    :try_start_9
    invoke-virtual {v1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 4681
    invoke-virtual {v1, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    const-string v2, "track_message"

    invoke-virtual {v0, v2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 4682
    invoke-virtual {v1, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 4684
    invoke-virtual {v1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v0, "event_name"

    .line 4685
    invoke-virtual {v1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 4686
    invoke-virtual {v1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 4688
    invoke-virtual {v1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 4689
    invoke-virtual {v1}, Landroid/util/JsonWriter;->flush()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 4694
    :try_start_a
    invoke-virtual {v1}, Landroid/util/JsonWriter;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto/16 :goto_b

    :catch_4
    move-exception p1

    .line 4696
    :goto_3
    :try_start_b
    invoke-static {v10, v9, p1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto/16 :goto_b

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_5
    move-exception p1

    .line 4691
    :try_start_c
    invoke-static {v10, v3, p1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 4694
    :try_start_d
    invoke-virtual {v1}, Landroid/util/JsonWriter;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto/16 :goto_b

    :catch_6
    move-exception p1

    goto :goto_3

    :goto_4
    :try_start_e
    invoke-virtual {v1}, Landroid/util/JsonWriter;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    goto :goto_5

    :catch_7
    move-exception v0

    .line 4696
    :try_start_f
    invoke-static {v10, v9, v0}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4698
    :goto_5
    throw p1

    .line 357
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->onMessageChannelReady(Lorg/json/JSONObject;)V

    goto/16 :goto_b

    .line 354
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONArray;

    .line 10800
    invoke-direct {p0}, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->onMessageChannelReady()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 10801
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 10802
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 10803
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 10805
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->onNavigationEvent(Ljava/lang/String;)V

    .line 10807
    invoke-direct {p0}, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->extraCallback()V

    goto/16 :goto_b

    .line 336
    :pswitch_9
    invoke-direct {p0}, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->ICustomTabsCallback()V

    goto/16 :goto_b

    .line 351
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->onPostMessage(Lorg/json/JSONObject;)V

    goto/16 :goto_b

    .line 339
    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    .line 3613
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 3615
    :try_start_10
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v4, "config"

    .line 3616
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3617
    iget-object v4, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lcom/mixpanel/android/viewcrawler/EditProtocol;

    invoke-virtual {v4, p1}, Lcom/mixpanel/android/viewcrawler/EditProtocol;->onPostMessage(Lorg/json/JSONObject;)Lo/hasSessionFileDirectory;

    move-result-object p1

    iput-object p1, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/hasSessionFileDirectory;

    const-string p1, "Initializing snapshot with configuration"

    .line 3618
    invoke-static {v10, p1}, Lo/TrimmedThrowableData;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_d
    .catch Lcom/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException; {:try_start_10 .. :try_end_10} :catch_c
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 3630
    :cond_2
    :try_start_11
    iget-object p1, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/hasSessionFileDirectory;

    if-nez p1, :cond_3

    const-string p1, "No snapshot configuration (or a malformed snapshot configuration) was sent."

    .line 3631
    invoke-direct {p0, p1}, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->extraCallback(Ljava/lang/String;)V

    const-string p1, "Mixpanel editor is misconfigured, sent a snapshot request without a valid configuration."

    .line 3632
    invoke-static {v10, p1}, Lo/TrimmedThrowableData;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 3637
    :cond_3
    iget-object p1, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->extraCallback:Lcom/mixpanel/android/viewcrawler/EditorConnection;

    .line 4066
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v4, Lcom/mixpanel/android/viewcrawler/EditorConnection$ICustomTabsCallback;

    invoke-direct {v4, p1, v8}, Lcom/mixpanel/android/viewcrawler/EditorConnection$ICustomTabsCallback;-><init>(Lcom/mixpanel/android/viewcrawler/EditorConnection;B)V

    invoke-direct {v1, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3638
    new-instance p1, Ljava/io/OutputStreamWriter;

    invoke-direct {p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :try_start_12
    const-string v4, "{"

    .line 3641
    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v4, "\"type\": \"snapshot_response\","

    .line 3642
    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v4, "\"payload\": {"

    .line 3643
    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v4, "\"activities\":"

    .line 3645
    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3646
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 3647
    iget-object v4, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/hasSessionFileDirectory;

    iget-object v5, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->extraCommand:Lo/CrashFilesManager;

    invoke-static {v5}, Lo/CrashFilesManager;->onNavigationEvent(Lo/CrashFilesManager;)Lo/ResourceUnityVersionProvider;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lo/hasSessionFileDirectory;->extraCallback(Lo/writeSessionJsonFile;Ljava/io/OutputStream;)V

    .line 3650
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-string v1, ",\"snapshot_time_millis\": "

    .line 3651
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3652
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3654
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3655
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_9
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 3660
    :try_start_13
    invoke-virtual {p1}, Ljava/io/Writer;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    goto/16 :goto_b

    :catch_8
    move-exception p1

    .line 3662
    :goto_6
    :try_start_14
    invoke-static {v10, v9, p1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    goto/16 :goto_b

    :catchall_2
    move-exception v0

    goto :goto_7

    :catch_9
    move-exception v0

    :try_start_15
    const-string v1, "Can\'t write snapshot request to server"

    .line 3657
    invoke-static {v10, v1, v0}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 3660
    :try_start_16
    invoke-virtual {p1}, Ljava/io/Writer;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_a
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    goto/16 :goto_b

    :catch_a
    move-exception p1

    goto :goto_6

    :goto_7
    :try_start_17
    invoke-virtual {p1}, Ljava/io/Writer;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_b
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    goto :goto_8

    :catch_b
    move-exception p1

    .line 3662
    :try_start_18
    invoke-static {v10, v9, p1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3664
    :goto_8
    throw v0

    :catch_c
    move-exception p1

    goto :goto_9

    :catch_d
    move-exception p1

    goto :goto_a

    :goto_9
    const-string v0, "Editor sent malformed message with snapshot request"

    .line 3625
    invoke-static {v10, v0, p1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3626
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->extraCallback(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 3621
    :goto_a
    invoke-static {v10, v1, p1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3622
    invoke-direct {p0, v1}, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->extraCallback(Ljava/lang/String;)V

    goto/16 :goto_b

    :pswitch_c
    const-string p1, "connecting to editor"

    .line 2479
    invoke-static {v10, p1}, Lo/TrimmedThrowableData;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V

    .line 2480
    iget-object p1, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->extraCallback:Lcom/mixpanel/android/viewcrawler/EditorConnection;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->extraCallback:Lcom/mixpanel/android/viewcrawler/EditorConnection;

    invoke-virtual {p1}, Lcom/mixpanel/android/viewcrawler/EditorConnection;->extraCallback()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "There is already a valid connection to an events editor."

    .line 2481
    invoke-static {v10, p1}, Lo/TrimmedThrowableData;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 2485
    :cond_4
    iget-object p1, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->extraCommand:Lo/CrashFilesManager;

    invoke-static {p1}, Lo/CrashFilesManager;->extraCallback(Lo/CrashFilesManager;)Lo/SessionSettingsData;

    move-result-object p1

    invoke-virtual {p1}, Lo/SessionSettingsData;->extraCallback()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    if-nez p1, :cond_5

    const-string p1, "SSL is not available on this device, no connection will be attempted to the events editor."

    .line 2487
    invoke-static {v10, p1}, Lo/TrimmedThrowableData;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 2491
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->extraCommand:Lo/CrashFilesManager;

    invoke-static {v1}, Lo/CrashFilesManager;->onMessageChannelReady(Lo/CrashFilesManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/SessionSettingsData;->ICustomTabsCallback(Landroid/content/Context;)Lo/SessionSettingsData;

    move-result-object v1

    .line 3431
    iget-object v1, v1, Lo/SessionSettingsData;->requestPostMessageChannel:Ljava/lang/String;

    .line 2491
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    .line 2493
    :try_start_19
    invoke-virtual {p1}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object p1

    .line 2494
    new-instance v1, Lcom/mixpanel/android/viewcrawler/EditorConnection;

    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    new-instance v3, Lo/CrashFilesManager$onMessageChannelReady;

    iget-object v4, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->extraCommand:Lo/CrashFilesManager;

    invoke-direct {v3, v4, v8}, Lo/CrashFilesManager$onMessageChannelReady;-><init>(Lo/CrashFilesManager;B)V

    invoke-direct {v1, v2, v3, p1}, Lcom/mixpanel/android/viewcrawler/EditorConnection;-><init>(Ljava/net/URI;Lcom/mixpanel/android/viewcrawler/EditorConnection$extraCallback;Ljava/net/Socket;)V

    iput-object v1, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->extraCallback:Lcom/mixpanel/android/viewcrawler/EditorConnection;
    :try_end_19
    .catch Ljava/net/URISyntaxException; {:try_start_19 .. :try_end_19} :catch_10
    .catch Lcom/mixpanel/android/viewcrawler/EditorConnection$EditorConnectionException; {:try_start_19 .. :try_end_19} :catch_f
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_e
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    goto :goto_b

    :catch_e
    move-exception p1

    :try_start_1a
    const-string v0, "Can\'t create SSL Socket to connect to editor service"

    .line 2500
    invoke-static {v10, v0, p1}, Lo/TrimmedThrowableData;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    :catch_f
    move-exception p1

    const-string v1, "Error connecting to URI "

    .line 2498
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0, p1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    :catch_10
    move-exception p1

    .line 2496
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error parsing URI "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for editor websocket"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0, p1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    .line 2384
    :pswitch_d
    invoke-direct {p0}, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->onMessageChannelReady()Landroid/content/SharedPreferences;

    move-result-object p1

    const/4 v0, 0x0

    .line 2385
    invoke-interface {p1, v7, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2386
    invoke-interface {p1, v6, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2388
    iget-object v0, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->warmup:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2389
    iget-object v0, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->newSession:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2390
    iget-object v0, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->mayLaunchUrl:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2391
    invoke-direct {p0, v1, v8}, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->ICustomTabsCallback(Ljava/lang/String;Z)V

    .line 2393
    iget-object v0, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->getInterfaceDescriptor:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2394
    invoke-direct {p0, p1}, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->onNavigationEvent(Ljava/lang/String;)V

    .line 2396
    invoke-direct {p0}, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->extraCallback()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    .line 373
    :cond_6
    :goto_b
    iget-object p1, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->onMessageChannelReady:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_3
    move-exception p1

    iget-object v0, p0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->onMessageChannelReady:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 374
    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
