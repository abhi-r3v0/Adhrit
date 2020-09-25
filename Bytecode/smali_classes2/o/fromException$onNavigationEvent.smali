.class public final Lo/fromException$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/fromException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onNavigationEvent"
.end annotation


# instance fields
.field ICustomTabsCallback:Lo/setPriorityInternal;

.field extraCallback:Ljava/lang/Object;

.field onMessageChannelReady:Ljava/lang/String;

.field public onNavigationEvent:Lo/getRef$ICustomTabsCallback;

.field public onPostMessage:Lo/fromCode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GET"

    .line 128
    iput-object v0, p0, Lo/fromException$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    .line 129
    new-instance v0, Lo/getRef$ICustomTabsCallback;

    invoke-direct {v0}, Lo/getRef$ICustomTabsCallback;-><init>()V

    iput-object v0, p0, Lo/fromException$onNavigationEvent;->onNavigationEvent:Lo/getRef$ICustomTabsCallback;

    return-void
.end method

.method private constructor <init>(Lo/fromException;)V
    .locals 2

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1028
    iget-object v0, p1, Lo/fromException;->onNavigationEvent:Lo/fromCode;

    .line 133
    iput-object v0, p0, Lo/fromException$onNavigationEvent;->onPostMessage:Lo/fromCode;

    .line 2028
    iget-object v0, p1, Lo/fromException;->extraCallback:Ljava/lang/String;

    .line 134
    iput-object v0, p0, Lo/fromException$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    .line 3028
    iget-object v0, p1, Lo/fromException;->onMessageChannelReady:Lo/setPriorityInternal;

    .line 135
    iput-object v0, p0, Lo/fromException$onNavigationEvent;->ICustomTabsCallback:Lo/setPriorityInternal;

    .line 4028
    iget-object v0, p1, Lo/fromException;->onPostMessage:Ljava/lang/Object;

    .line 136
    iput-object v0, p0, Lo/fromException$onNavigationEvent;->extraCallback:Ljava/lang/Object;

    .line 5028
    iget-object p1, p1, Lo/fromException;->ICustomTabsCallback:Lo/getRef;

    .line 5121
    new-instance v0, Lo/getRef$ICustomTabsCallback;

    invoke-direct {v0}, Lo/getRef$ICustomTabsCallback;-><init>()V

    .line 5214
    iget-object v1, v0, Lo/getRef$ICustomTabsCallback;->onNavigationEvent:Ljava/util/List;

    .line 5122
    iget-object p1, p1, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 137
    iput-object v0, p0, Lo/fromException$onNavigationEvent;->onNavigationEvent:Lo/getRef$ICustomTabsCallback;

    return-void
.end method

.method public synthetic constructor <init>(Lo/fromException;B)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lo/fromException$onNavigationEvent;-><init>(Lo/fromException;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;)Lo/fromException$onNavigationEvent;
    .locals 3

    if-eqz p1, :cond_1

    .line 252
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    invoke-static {p1}, Lo/extraCallback;->asInterface(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    iput-object p1, p0, Lo/fromException$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    const/4 p1, 0x0

    .line 262
    iput-object p1, p0, Lo/fromException$onNavigationEvent;->ICustomTabsCallback:Lo/setPriorityInternal;

    return-object p0

    .line 259
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "method "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must have a request body."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "method == null || method.length() == 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final extraCallback(Ljava/lang/String;)Lo/fromException$onNavigationEvent;
    .locals 1

    .line 202
    iget-object v0, p0, Lo/fromException$onNavigationEvent;->onNavigationEvent:Lo/getRef$ICustomTabsCallback;

    invoke-virtual {v0, p1}, Lo/getRef$ICustomTabsCallback;->extraCallback(Ljava/lang/String;)Lo/getRef$ICustomTabsCallback;

    return-object p0
.end method

.method public final onNavigationEvent(Ljava/lang/String;)Lo/fromException$onNavigationEvent;
    .locals 7

    const-string v0, "url == null"

    if-eqz p1, :cond_4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    const-string v4, "ws:"

    move-object v1, p1

    .line 156
    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
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

    .line 158
    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 162
    :cond_1
    :goto_0
    invoke-static {p1}, Lo/fromCode;->onPostMessage(Ljava/lang/String;)Lo/fromCode;

    move-result-object v1

    if-eqz v1, :cond_3

    if-eqz v1, :cond_2

    .line 6142
    iput-object v1, p0, Lo/fromException$onNavigationEvent;->onPostMessage:Lo/fromCode;

    return-object p0

    .line 6141
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 163
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "unexpected url: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)Lo/fromException$onNavigationEvent;
    .locals 1

    .line 197
    iget-object v0, p0, Lo/fromException$onNavigationEvent;->onNavigationEvent:Lo/getRef$ICustomTabsCallback;

    invoke-virtual {v0, p1, p2}, Lo/getRef$ICustomTabsCallback;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)Lo/getRef$ICustomTabsCallback;

    return-object p0
.end method

.method public final onPostMessage(Ljava/lang/String;Ljava/lang/String;)Lo/fromException$onNavigationEvent;
    .locals 1

    .line 185
    iget-object v0, p0, Lo/fromException$onNavigationEvent;->onNavigationEvent:Lo/getRef$ICustomTabsCallback;

    invoke-virtual {v0, p1, p2}, Lo/getRef$ICustomTabsCallback;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Lo/getRef$ICustomTabsCallback;

    return-object p0
.end method
