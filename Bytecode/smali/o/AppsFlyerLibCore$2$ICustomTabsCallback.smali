.class public Lo/AppsFlyerLibCore$2$ICustomTabsCallback;
.super Lo/onBecameBackground$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AppsFlyerLibCore$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/AppsFlyerLibCore$2$ICustomTabsCallback$onNavigationEvent;
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Ljava/util/zip/ZipFile;

.field private synthetic extraCallback:Lo/AppsFlyerLibCore$2;

.field onMessageChannelReady:[Lo/AppsFlyerLibCore$2$extraCallback;


# direct methods
.method constructor <init>(Lo/AppsFlyerLibCore$2;Lo/onBecameBackground;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lo/AppsFlyerLibCore$2$ICustomTabsCallback;->extraCallback:Lo/AppsFlyerLibCore$2;

    invoke-direct {p0}, Lo/onBecameBackground$onNavigationEvent;-><init>()V

    .line 66
    new-instance p2, Ljava/util/zip/ZipFile;

    iget-object p1, p1, Lo/AppsFlyerLibCore$2;->onNavigationEvent:Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    iput-object p2, p0, Lo/AppsFlyerLibCore$2$ICustomTabsCallback;->ICustomTabsCallback:Ljava/util/zip/ZipFile;

    return-void
.end method


# virtual methods
.method protected final ICustomTabsCallback()Lo/onBecameBackground$onPostMessage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    new-instance v0, Lo/AppsFlyerLibCore$2$ICustomTabsCallback$onNavigationEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/AppsFlyerLibCore$2$ICustomTabsCallback$onNavigationEvent;-><init>(Lo/AppsFlyerLibCore$2$ICustomTabsCallback;B)V

    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lo/AppsFlyerLibCore$2$ICustomTabsCallback;->ICustomTabsCallback:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    return-void
.end method

.method protected extraCallback(Ljava/util/zip/ZipEntry;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method final onMessageChannelReady()[Lo/AppsFlyerLibCore$2$extraCallback;
    .locals 9

    .line 71
    iget-object v0, p0, Lo/AppsFlyerLibCore$2$ICustomTabsCallback;->onMessageChannelReady:[Lo/AppsFlyerLibCore$2$extraCallback;

    if-nez v0, :cond_7

    .line 72
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 73
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 74
    iget-object v2, p0, Lo/AppsFlyerLibCore$2$ICustomTabsCallback;->extraCallback:Lo/AppsFlyerLibCore$2;

    iget-object v2, v2, Lo/AppsFlyerLibCore$2;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 75
    invoke-static {}, Lcom/facebook/soloader/SysUtil;->onNavigationEvent()[Ljava/lang/String;

    move-result-object v3

    .line 76
    iget-object v4, p0, Lo/AppsFlyerLibCore$2$ICustomTabsCallback;->ICustomTabsCallback:Ljava/util/zip/ZipFile;

    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    .line 77
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 78
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    .line 79
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 80
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    .line 81
    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    .line 82
    invoke-virtual {v6, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 83
    invoke-static {v3, v7}, Lcom/facebook/soloader/SysUtil;->onMessageChannelReady([Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_0

    .line 85
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-virtual {v1, v6}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/AppsFlyerLibCore$2$extraCallback;

    if-eqz v7, :cond_1

    .line 87
    iget v7, v7, Lo/AppsFlyerLibCore$2$extraCallback;->extraCallback:I

    if-ge v8, v7, :cond_0

    .line 88
    :cond_1
    new-instance v7, Lo/AppsFlyerLibCore$2$extraCallback;

    invoke-direct {v7, v6, v5, v8}, Lo/AppsFlyerLibCore$2$extraCallback;-><init>(Ljava/lang/String;Ljava/util/zip/ZipEntry;I)V

    invoke-virtual {v1, v6, v7}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 94
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 96
    invoke-virtual {v1}, Ljava/util/AbstractMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/AbstractMap;->size()I

    move-result v1

    new-array v1, v1, [Lo/AppsFlyerLibCore$2$extraCallback;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/AppsFlyerLibCore$2$extraCallback;

    .line 97
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 99
    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_4

    .line 100
    aget-object v4, v0, v2

    .line 101
    iget-object v5, v4, Lo/AppsFlyerLibCore$2$extraCallback;->onNavigationEvent:Ljava/util/zip/ZipEntry;

    iget-object v4, v4, Lo/onBecameBackground$extraCallback;->onPostMessage:Ljava/lang/String;

    invoke-virtual {p0, v5, v4}, Lo/AppsFlyerLibCore$2$ICustomTabsCallback;->extraCallback(Ljava/util/zip/ZipEntry;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    .line 104
    aput-object v4, v0, v2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 107
    :cond_4
    new-array v2, v3, [Lo/AppsFlyerLibCore$2$extraCallback;

    const/4 v3, 0x0

    .line 108
    :goto_3
    array-length v4, v0

    if-ge v1, v4, :cond_6

    .line 109
    aget-object v4, v0, v1

    if-eqz v4, :cond_5

    add-int/lit8 v5, v3, 0x1

    .line 111
    aput-object v4, v2, v3

    move v3, v5

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 114
    :cond_6
    iput-object v2, p0, Lo/AppsFlyerLibCore$2$ICustomTabsCallback;->onMessageChannelReady:[Lo/AppsFlyerLibCore$2$extraCallback;

    .line 116
    :cond_7
    iget-object v0, p0, Lo/AppsFlyerLibCore$2$ICustomTabsCallback;->onMessageChannelReady:[Lo/AppsFlyerLibCore$2$extraCallback;

    return-object v0
.end method

.method protected final onPostMessage()Lo/onBecameBackground$ICustomTabsCallback;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    new-instance v0, Lo/onBecameBackground$ICustomTabsCallback;

    invoke-virtual {p0}, Lo/AppsFlyerLibCore$2$ICustomTabsCallback;->onMessageChannelReady()[Lo/AppsFlyerLibCore$2$extraCallback;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/onBecameBackground$ICustomTabsCallback;-><init>([Lo/onBecameBackground$extraCallback;)V

    return-object v0
.end method
