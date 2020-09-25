.class public final Lo/isCompleteForChild$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isCompleteForChild;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field ICustomTabsCallback:Lo/isCompleteForPath;

.field public extraCallback:Lo/shouldIncludeField$onMessageChannelReady;

.field onMessageChannelReady:Ljava/lang/String;

.field onNavigationEvent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public onPostMessage:Lo/isFullyInitialized;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lo/isCompleteForChild$ICustomTabsCallback;->onNavigationEvent:Ljava/util/Map;

    const-string v0, "GET"

    .line 129
    iput-object v0, p0, Lo/isCompleteForChild$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/String;

    .line 130
    new-instance v0, Lo/shouldIncludeField$onMessageChannelReady;

    invoke-direct {v0}, Lo/shouldIncludeField$onMessageChannelReady;-><init>()V

    iput-object v0, p0, Lo/isCompleteForChild$ICustomTabsCallback;->extraCallback:Lo/shouldIncludeField$onMessageChannelReady;

    return-void
.end method

.method public constructor <init>(Lo/isCompleteForChild;)V
    .locals 2

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lo/isCompleteForChild$ICustomTabsCallback;->onNavigationEvent:Ljava/util/Map;

    .line 134
    iget-object v0, p1, Lo/isCompleteForChild;->ICustomTabsCallback:Lo/isFullyInitialized;

    iput-object v0, p0, Lo/isCompleteForChild$ICustomTabsCallback;->onPostMessage:Lo/isFullyInitialized;

    .line 135
    iget-object v0, p1, Lo/isCompleteForChild;->onNavigationEvent:Ljava/lang/String;

    iput-object v0, p0, Lo/isCompleteForChild$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/String;

    .line 136
    iget-object v0, p1, Lo/isCompleteForChild;->onMessageChannelReady:Lo/isCompleteForPath;

    iput-object v0, p0, Lo/isCompleteForChild$ICustomTabsCallback;->ICustomTabsCallback:Lo/isCompleteForPath;

    .line 137
    iget-object v0, p1, Lo/isCompleteForChild;->extraCallback:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 139
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lo/isCompleteForChild;->extraCallback:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    :goto_0
    iput-object v0, p0, Lo/isCompleteForChild$ICustomTabsCallback;->onNavigationEvent:Ljava/util/Map;

    .line 140
    iget-object p1, p1, Lo/isCompleteForChild;->onPostMessage:Lo/shouldIncludeField;

    .line 1131
    new-instance v0, Lo/shouldIncludeField$onMessageChannelReady;

    invoke-direct {v0}, Lo/shouldIncludeField$onMessageChannelReady;-><init>()V

    .line 1132
    iget-object v1, v0, Lo/shouldIncludeField$onMessageChannelReady;->onPostMessage:Ljava/util/List;

    iget-object p1, p1, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 140
    iput-object v0, p0, Lo/isCompleteForChild$ICustomTabsCallback;->extraCallback:Lo/shouldIncludeField$onMessageChannelReady;

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/String;Ljava/lang/String;)Lo/isCompleteForChild$ICustomTabsCallback;
    .locals 1

    .line 184
    iget-object v0, p0, Lo/isCompleteForChild$ICustomTabsCallback;->extraCallback:Lo/shouldIncludeField$onMessageChannelReady;

    invoke-virtual {v0, p1, p2}, Lo/shouldIncludeField$onMessageChannelReady;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)Lo/shouldIncludeField$onMessageChannelReady;

    return-object p0
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)Lo/isCompleteForChild$ICustomTabsCallback;
    .locals 1

    .line 202
    iget-object v0, p0, Lo/isCompleteForChild$ICustomTabsCallback;->extraCallback:Lo/shouldIncludeField$onMessageChannelReady;

    invoke-virtual {v0, p1}, Lo/shouldIncludeField$onMessageChannelReady;->onMessageChannelReady(Ljava/lang/String;)Lo/shouldIncludeField$onMessageChannelReady;

    return-object p0
.end method

.method public final onNavigationEvent(Ljava/lang/String;Lo/isCompleteForPath;)Lo/isCompleteForChild$ICustomTabsCallback;
    .locals 2

    if-eqz p1, :cond_6

    .line 253
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "method "

    if-eqz p2, :cond_2

    const-string v1, "GET"

    .line 2036
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "HEAD"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    .line 255
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must not have a request body."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    :goto_1
    if-nez p2, :cond_4

    .line 257
    invoke-static {p1}, Lo/extraCallback$ICustomTabsCallback;->onNavigationEvent(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    .line 258
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must have a request body."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 260
    :cond_4
    :goto_2
    iput-object p1, p0, Lo/isCompleteForChild$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/String;

    .line 261
    iput-object p2, p0, Lo/isCompleteForChild$ICustomTabsCallback;->ICustomTabsCallback:Lo/isCompleteForPath;

    return-object p0

    .line 253
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "method.length() == 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 252
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "method == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onPostMessage(Ljava/lang/String;)Lo/isCompleteForChild$ICustomTabsCallback;
    .locals 7

    const-string v0, "url == null"

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    const-string v4, "ws:"

    move-object v1, p1

    .line 159
    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    const-string v4, "wss:"

    move-object v1, p1

    .line 161
    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 165
    :cond_1
    :goto_0
    invoke-static {p1}, Lo/isFullyInitialized;->extraCallback(Ljava/lang/String;)Lo/isFullyInitialized;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1145
    iput-object p1, p0, Lo/isCompleteForChild$ICustomTabsCallback;->onPostMessage:Lo/isFullyInitialized;

    return-object p0

    .line 1144
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 156
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
