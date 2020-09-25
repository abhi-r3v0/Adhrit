.class public final Lo/getNext_screen;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Ljava/nio/charset/Charset;


# instance fields
.field private onMessageChannelReady:Lo/getDefault_value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getDefault_value<",
            "TP;>;"
        }
    .end annotation
.end field

.field private onPostMessage:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lo/getDefault_value<",
            "TP;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lo/getNext_screen;->ICustomTabsCallback:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lo/getNext_screen;->onPostMessage:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()Lo/getDefault_value;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getDefault_value<",
            "TP;>;"
        }
    .end annotation

    iget-object v0, p0, Lo/getNext_screen;->onMessageChannelReady:Lo/getDefault_value;

    return-object v0
.end method

.method protected final onPostMessage(Ljava/lang/Object;Lo/EmiScreenResponse$ScreenData$onNavigationEvent;)Lo/getDefault_value;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;",
            "Lo/EmiScreenResponse$ScreenData$onNavigationEvent;",
            ")",
            "Lo/getDefault_value<",
            "TP;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    new-instance v0, Lo/getDefault_value;

    sget-object v1, Lo/getExperiments;->onPostMessage:[I

    invoke-virtual {p2}, Lo/EmiScreenResponse$ScreenData$onNavigationEvent;->extraCallback()Lo/EmiScreenResponse_ItemDetailsJsonAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lo/EmiScreenResponse_ItemDetailsJsonAdapter;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    const/4 v4, 0x3

    if-eq v1, v4, :cond_1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    sget-object v1, Lo/AmountScreenResponse$CardData$$Parcelable;->extraCallback:[B

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "unknown output prefix type"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    :goto_0
    invoke-virtual {p2}, Lo/EmiScreenResponse$ScreenData$onNavigationEvent;->onNavigationEvent()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    :goto_1
    invoke-virtual {p2}, Lo/EmiScreenResponse$ScreenData$onNavigationEvent;->onPostMessage()Lo/EmiScreenResponse;

    move-result-object v2

    invoke-virtual {p2}, Lo/EmiScreenResponse$ScreenData$onNavigationEvent;->extraCallback()Lo/EmiScreenResponse_ItemDetailsJsonAdapter;

    move-result-object p2

    invoke-direct {v0, p1, v1, v2, p2}, Lo/getDefault_value;-><init>(Ljava/lang/Object;[BLo/EmiScreenResponse;Lo/EmiScreenResponse_ItemDetailsJsonAdapter;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Ljava/lang/String;

    invoke-virtual {v0}, Lo/getDefault_value;->ICustomTabsCallback()[B

    move-result-object v1

    sget-object v2, Lo/getNext_screen;->ICustomTabsCallback:Ljava/nio/charset/Charset;

    invoke-direct {p2, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-object v1, p0, Lo/getNext_screen;->onPostMessage:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p2, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lo/getNext_screen;->onPostMessage:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0
.end method

.method protected final onPostMessage(Lo/getDefault_value;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getDefault_value<",
            "TP;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lo/getNext_screen;->onMessageChannelReady:Lo/getDefault_value;

    return-void
.end method
