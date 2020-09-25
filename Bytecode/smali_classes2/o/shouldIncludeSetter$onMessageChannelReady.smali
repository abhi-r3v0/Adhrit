.class public final Lo/shouldIncludeSetter$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/shouldIncludeSetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private final extraCallback:Ljava/nio/charset/Charset;

.field public final onMessageChannelReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final onPostMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 111
    invoke-direct {p0, v0}, Lo/shouldIncludeSetter$onMessageChannelReady;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/shouldIncludeSetter$onMessageChannelReady;->onPostMessage:Ljava/util/List;

    .line 107
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/shouldIncludeSetter$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    const/4 p1, 0x0

    .line 115
    iput-object p1, p0, Lo/shouldIncludeSetter$onMessageChannelReady;->extraCallback:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)Lo/shouldIncludeSetter$onMessageChannelReady;
    .locals 4

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 131
    iget-object v0, p0, Lo/shouldIncludeSetter$onMessageChannelReady;->onPostMessage:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    invoke-static {p1, v3, v2, v1}, Lo/isFullyInitialized;->onPostMessage(Ljava/lang/String;Ljava/lang/String;ZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object p1, p0, Lo/shouldIncludeSetter$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-static {p2, v3, v2, v1}, Lo/isFullyInitialized;->onPostMessage(Ljava/lang/String;Ljava/lang/String;ZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 129
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 128
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "name == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Lo/shouldIncludeSetter$onMessageChannelReady;
    .locals 4

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 122
    iget-object v0, p0, Lo/shouldIncludeSetter$onMessageChannelReady;->onPostMessage:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    invoke-static {p1, v3, v2, v1}, Lo/isFullyInitialized;->onPostMessage(Ljava/lang/String;Ljava/lang/String;ZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object p1, p0, Lo/shouldIncludeSetter$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-static {p2, v3, v2, v1}, Lo/isFullyInitialized;->onPostMessage(Ljava/lang/String;Ljava/lang/String;ZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 120
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 119
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "name == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
