.class Landroidx/appcompat/widget/ActivityChooserModel;
.super Landroid/database/DataSetObservable;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ActivityChooserModel$onNavigationEvent;,
        Landroidx/appcompat/widget/ActivityChooserModel$onPostMessage;,
        Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;,
        Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;,
        Landroidx/appcompat/widget/ActivityChooserModel$OnChooseActivityListener;,
        Landroidx/appcompat/widget/ActivityChooserModel$ActivitySorter;,
        Landroidx/appcompat/widget/ActivityChooserModel$ActivityChooserModelClient;
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback$Stub:Ljava/lang/Object;

.field private static final getInterfaceDescriptor:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/appcompat/widget/ActivityChooserModel;",
            ">;"
        }
    .end annotation
.end field

.field static final onPostMessage:Ljava/lang/String;


# instance fields
.field final ICustomTabsCallback:Landroid/content/Context;

.field private ICustomTabsCallback$Stub$Proxy:Z

.field private ICustomTabsService:I

.field asBinder:Landroidx/appcompat/widget/ActivityChooserModel$OnChooseActivityListener;

.field asInterface:Landroid/content/Intent;

.field final extraCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private extraCommand:Z

.field private newSession:Landroidx/appcompat/widget/ActivityChooserModel$ActivitySorter;

.field final onMessageChannelReady:Ljava/lang/Object;

.field final onNavigationEvent:Ljava/lang/String;

.field onRelationshipValidationResult:Z

.field onTransact:Z

.field private final warmup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 157
    const-class v0, Landroidx/appcompat/widget/ActivityChooserModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/ActivityChooserModel;->onPostMessage:Ljava/lang/String;

    .line 218
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/ActivityChooserModel;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    .line 223
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/ActivityChooserModel;->getInterfaceDescriptor:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 346
    invoke-direct {p0}, Landroid/database/DataSetObservable;-><init>()V

    .line 229
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->onMessageChannelReady:Ljava/lang/Object;

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->extraCallback:Ljava/util/List;

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->warmup:Ljava/util/List;

    .line 259
    new-instance v0, Landroidx/appcompat/widget/ActivityChooserModel$onPostMessage;

    invoke-direct {v0}, Landroidx/appcompat/widget/ActivityChooserModel$onPostMessage;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->newSession:Landroidx/appcompat/widget/ActivityChooserModel$ActivitySorter;

    const/16 v0, 0x32

    .line 264
    iput v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->ICustomTabsService:I

    const/4 v0, 0x1

    .line 274
    iput-boolean v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->onTransact:Z

    const/4 v1, 0x0

    .line 285
    iput-boolean v1, p0, Landroidx/appcompat/widget/ActivityChooserModel;->ICustomTabsCallback$Stub$Proxy:Z

    .line 293
    iput-boolean v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->extraCommand:Z

    .line 298
    iput-boolean v1, p0, Landroidx/appcompat/widget/ActivityChooserModel;->onRelationshipValidationResult:Z

    .line 347
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/ActivityChooserModel;->ICustomTabsCallback:Landroid/content/Context;

    .line 348
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, ".xml"

    .line 349
    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/ActivityChooserModel;->onNavigationEvent:Ljava/lang/String;

    return-void

    .line 352
    :cond_0
    iput-object p2, p0, Landroidx/appcompat/widget/ActivityChooserModel;->onNavigationEvent:Ljava/lang/String;

    return-void
.end method

.method private ICustomTabsCallback$Stub()V
    .locals 6

    .line 566
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v0, :cond_2

    .line 569
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->extraCommand:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 572
    iput-boolean v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->extraCommand:Z

    .line 573
    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserModel;->onNavigationEvent:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 574
    new-instance v1, Landroidx/appcompat/widget/ActivityChooserModel$onNavigationEvent;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/ActivityChooserModel$onNavigationEvent;-><init>(Landroidx/appcompat/widget/ActivityChooserModel;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Landroidx/appcompat/widget/ActivityChooserModel;->warmup:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aput-object v4, v3, v0

    const/4 v0, 0x1

    iget-object v4, p0, Landroidx/appcompat/widget/ActivityChooserModel;->onNavigationEvent:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/ActivityChooserModel$onNavigationEvent;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void

    .line 567
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No preceding call to #readHistoricalData"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static extraCallback(Landroid/content/Context;Ljava/lang/String;)Landroidx/appcompat/widget/ActivityChooserModel;
    .locals 2

    .line 330
    sget-object v0, Landroidx/appcompat/widget/ActivityChooserModel;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    monitor-enter v0

    .line 331
    :try_start_0
    sget-object v1, Landroidx/appcompat/widget/ActivityChooserModel;->getInterfaceDescriptor:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/ActivityChooserModel;

    if-nez v1, :cond_0

    .line 333
    new-instance v1, Landroidx/appcompat/widget/ActivityChooserModel;

    invoke-direct {v1, p0, p1}, Landroidx/appcompat/widget/ActivityChooserModel;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 334
    sget-object p0, Landroidx/appcompat/widget/ActivityChooserModel;->getInterfaceDescriptor:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p0

    .line 337
    monitor-exit v0

    throw p0
.end method

.method private onTransact()V
    .locals 10

    const-string v0, "Error reading historical recrod file: "

    .line 966
    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserModel;->ICustomTabsCallback:Landroid/content/Context;

    iget-object v2, p0, Landroidx/appcompat/widget/ActivityChooserModel;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6

    .line 974
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    const-string v3, "UTF-8"

    .line 975
    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    .line 979
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto :goto_0

    :cond_0
    const-string v3, "historical-records"

    .line 982
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 987
    iget-object v3, p0, Landroidx/appcompat/widget/ActivityChooserModel;->warmup:Ljava/util/List;

    .line 988
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 991
    :cond_1
    :goto_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-eq v5, v4, :cond_3

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    const/4 v6, 0x4

    if-eq v5, v6, :cond_1

    .line 998
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "historical-record"

    .line 999
    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "activity"

    const/4 v6, 0x0

    .line 1003
    invoke-interface {v2, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "time"

    .line 1005
    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const-string v9, "weight"

    .line 1007
    invoke-interface {v2, v6, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 1008
    new-instance v9, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;

    invoke-direct {v9, v5, v7, v8, v6}, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;-><init>(Ljava/lang/String;JF)V

    .line 1009
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1000
    :cond_2
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Share records file not well-formed."

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    if-eqz v1, :cond_5

    .line 1026
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void

    .line 983
    :cond_4
    :try_start_3
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Share records file does not start with historical-records tag."

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v2

    .line 1022
    :try_start_4
    sget-object v3, Landroidx/appcompat/widget/ActivityChooserModel;->onPostMessage:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_5

    .line 1026
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    return-void

    :catch_3
    move-exception v2

    .line 1020
    :try_start_6
    sget-object v3, Landroidx/appcompat/widget/ActivityChooserModel;->onPostMessage:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v1, :cond_5

    .line 1026
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :catch_4
    :cond_5
    return-void

    :goto_2
    if-eqz v1, :cond_6

    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 1031
    :catch_5
    :cond_6
    throw v0

    :catch_6
    return-void
.end method


# virtual methods
.method final ICustomTabsCallback()Z
    .locals 4

    .line 671
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->newSession:Landroidx/appcompat/widget/ActivityChooserModel$ActivitySorter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->asInterface:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->extraCallback:Ljava/util/List;

    .line 672
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->warmup:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 673
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->newSession:Landroidx/appcompat/widget/ActivityChooserModel$ActivitySorter;

    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserModel;->asInterface:Landroid/content/Intent;

    iget-object v2, p0, Landroidx/appcompat/widget/ActivityChooserModel;->extraCallback:Ljava/util/List;

    iget-object v3, p0, Landroidx/appcompat/widget/ActivityChooserModel;->warmup:Ljava/util/List;

    .line 674
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 673
    invoke-interface {v0, v1, v2, v3}, Landroidx/appcompat/widget/ActivityChooserModel$ActivitySorter;->sort(Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final ICustomTabsCallback(Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;)Z
    .locals 1

    .line 727
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->warmup:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 729
    iput-boolean v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->extraCommand:Z

    .line 730
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserModel;->asInterface()V

    .line 731
    invoke-direct {p0}, Landroidx/appcompat/widget/ActivityChooserModel;->ICustomTabsCallback$Stub()V

    .line 732
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserModel;->ICustomTabsCallback()Z

    .line 733
    invoke-virtual {p0}, Landroid/database/DataSetObservable;->notifyChanged()V

    :cond_0
    return p1
.end method

.method final asBinder()Z
    .locals 2

    .line 710
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->onTransact:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->extraCommand:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->onNavigationEvent:Ljava/lang/String;

    .line 711
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 712
    iput-boolean v1, p0, Landroidx/appcompat/widget/ActivityChooserModel;->onTransact:Z

    const/4 v0, 0x1

    .line 713
    iput-boolean v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->ICustomTabsCallback$Stub$Proxy:Z

    .line 714
    invoke-direct {p0}, Landroidx/appcompat/widget/ActivityChooserModel;->onTransact()V

    return v0

    :cond_0
    return v1
.end method

.method final asInterface()V
    .locals 4

    .line 742
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->warmup:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Landroidx/appcompat/widget/ActivityChooserModel;->ICustomTabsService:I

    sub-int/2addr v0, v1

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 746
    iput-boolean v1, p0, Landroidx/appcompat/widget/ActivityChooserModel;->extraCommand:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 748
    iget-object v3, p0, Landroidx/appcompat/widget/ActivityChooserModel;->warmup:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final extraCallback()Landroid/content/pm/ResolveInfo;
    .locals 3

    .line 512
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    .line 5654
    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserModel;->onMessageChannelReady()Z

    move-result v1

    .line 5655
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserModel;->asBinder()Z

    move-result v2

    or-int/2addr v1, v2

    .line 5656
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserModel;->asInterface()V

    if-eqz v1, :cond_0

    .line 5658
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserModel;->ICustomTabsCallback()Z

    .line 5659
    invoke-virtual {p0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 514
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserModel;->extraCallback:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 515
    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserModel;->extraCallback:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;

    iget-object v1, v1, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 517
    :cond_1
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final onMessageChannelReady(I)Landroid/content/Intent;
    .locals 6

    .line 457
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    .line 458
    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserModel;->asInterface:Landroid/content/Intent;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 459
    monitor-exit v0

    return-object v2

    .line 4654
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserModel;->onMessageChannelReady()Z

    move-result v1

    .line 4655
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserModel;->asBinder()Z

    move-result v3

    or-int/2addr v1, v3

    .line 4656
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserModel;->asInterface()V

    if-eqz v1, :cond_1

    .line 4658
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserModel;->ICustomTabsCallback()Z

    .line 4659
    invoke-virtual {p0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 464
    :cond_1
    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserModel;->extraCallback:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 466
    new-instance v1, Landroid/content/ComponentName;

    iget-object v3, p1, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v3, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    new-instance p1, Landroid/content/Intent;

    iget-object v3, p0, Landroidx/appcompat/widget/ActivityChooserModel;->asInterface:Landroid/content/Intent;

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 471
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 473
    iget-object v3, p0, Landroidx/appcompat/widget/ActivityChooserModel;->asBinder:Landroidx/appcompat/widget/ActivityChooserModel$OnChooseActivityListener;

    if-eqz v3, :cond_2

    .line 475
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 476
    iget-object v4, p0, Landroidx/appcompat/widget/ActivityChooserModel;->asBinder:Landroidx/appcompat/widget/ActivityChooserModel$OnChooseActivityListener;

    invoke-interface {v4, p0, v3}, Landroidx/appcompat/widget/ActivityChooserModel$OnChooseActivityListener;->onChooseActivity(Landroidx/appcompat/widget/ActivityChooserModel;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 479
    monitor-exit v0

    return-object v2

    .line 483
    :cond_2
    new-instance v2, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;

    .line 484
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v1, v3, v4, v5}, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V

    .line 485
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/ActivityChooserModel;->ICustomTabsCallback(Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;)Z

    .line 487
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 488
    monitor-exit v0

    throw p1
.end method

.method final onMessageChannelReady()Z
    .locals 6

    .line 687
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->onRelationshipValidationResult:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->asInterface:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 688
    iput-boolean v1, p0, Landroidx/appcompat/widget/ActivityChooserModel;->onRelationshipValidationResult:Z

    .line 689
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->extraCallback:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 690
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->ICustomTabsCallback:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Landroidx/appcompat/widget/ActivityChooserModel;->asInterface:Landroid/content/Intent;

    .line 691
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 692
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    .line 694
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 695
    iget-object v4, p0, Landroidx/appcompat/widget/ActivityChooserModel;->extraCallback:Ljava/util/List;

    new-instance v5, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;

    invoke-direct {v5, v3}, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public final onNavigationEvent()I
    .locals 3

    .line 641
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    .line 6654
    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserModel;->onMessageChannelReady()Z

    move-result v1

    .line 6655
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserModel;->asBinder()Z

    move-result v2

    or-int/2addr v1, v2

    .line 6656
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserModel;->asInterface()V

    if-eqz v1, :cond_0

    .line 6658
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserModel;->ICustomTabsCallback()Z

    .line 6659
    invoke-virtual {p0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 643
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserModel;->warmup:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v1

    .line 644
    monitor-exit v0

    throw v1
.end method

.method public final onNavigationEvent(Landroid/content/pm/ResolveInfo;)I
    .locals 5

    .line 424
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    .line 3654
    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserModel;->onMessageChannelReady()Z

    move-result v1

    .line 3655
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserModel;->asBinder()Z

    move-result v2

    or-int/2addr v1, v2

    .line 3656
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserModel;->asInterface()V

    if-eqz v1, :cond_0

    .line 3658
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserModel;->ICustomTabsCallback()Z

    .line 3659
    invoke-virtual {p0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 426
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserModel;->extraCallback:Ljava/util/List;

    .line 427
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 429
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 430
    iget-object v4, v4, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    if-ne v4, p1, :cond_1

    .line 431
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    .line 434
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 435
    monitor-exit v0

    throw p1
.end method

.method public final onPostMessage()I
    .locals 3

    .line 395
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    .line 1654
    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserModel;->onMessageChannelReady()Z

    move-result v1

    .line 1655
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserModel;->asBinder()Z

    move-result v2

    or-int/2addr v1, v2

    .line 1656
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserModel;->asInterface()V

    if-eqz v1, :cond_0

    .line 1658
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserModel;->ICustomTabsCallback()Z

    .line 1659
    invoke-virtual {p0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 397
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserModel;->extraCallback:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v1

    .line 398
    monitor-exit v0

    throw v1
.end method

.method public final onPostMessage(I)Landroid/content/pm/ResolveInfo;
    .locals 3

    .line 410
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    .line 2654
    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserModel;->onMessageChannelReady()Z

    move-result v1

    .line 2655
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserModel;->asBinder()Z

    move-result v2

    or-int/2addr v1, v2

    .line 2656
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserModel;->asInterface()V

    if-eqz v1, :cond_0

    .line 2658
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserModel;->ICustomTabsCallback()Z

    .line 2659
    invoke-virtual {p0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 412
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserModel;->extraCallback:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;

    iget-object p1, p1, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 413
    monitor-exit v0

    throw p1
.end method
