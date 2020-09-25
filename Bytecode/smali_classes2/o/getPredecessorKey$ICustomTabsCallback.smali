.class public abstract Lo/getPredecessorKey$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getPredecessorKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final onNavigationEvent:Ljava/util/BitSet;


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/String;

.field final extraCallback:[B

.field public final onPostMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 3719
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x7f

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    const/16 v1, 0x2d

    .line 3720
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    const/16 v1, 0x5f

    .line 3721
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    const/16 v1, 0x2e

    .line 3722
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    const/16 v1, 0x30

    :goto_0
    const/16 v2, 0x39

    if-gt v1, v2, :cond_0

    .line 3724
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_0

    :cond_0
    const/16 v1, 0x61

    :goto_1
    const/16 v2, 0x7a

    if-gt v1, v2, :cond_1

    .line 3728
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_1

    .line 671
    :cond_1
    sput-object v0, Lo/getPredecessorKey$ICustomTabsCallback;->onNavigationEvent:Ljava/util/BitSet;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ZLjava/lang/Object;)V
    .locals 0

    .line 748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 749
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lo/getPredecessorKey$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/String;

    .line 750
    sget-object p3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, p3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lo/getPredecessorKey$ICustomTabsCallback;->onNavigationEvent(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/getPredecessorKey$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;

    .line 751
    sget-object p2, Lo/performAutoConfigure;->onMessageChannelReady:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iput-object p1, p0, Lo/getPredecessorKey$ICustomTabsCallback;->extraCallback:[B

    return-void

    .line 2910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "name"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZLjava/lang/Object;B)V
    .locals 0

    .line 668
    invoke-direct {p0, p1, p2, p3}, Lo/getPredecessorKey$ICustomTabsCallback;-><init>(Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method

.method public static ICustomTabsCallback(Ljava/lang/String;Lo/getPredecessorKey$onNavigationEvent;)Lo/getPredecessorKey$ICustomTabsCallback;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lo/getPredecessorKey$onNavigationEvent<",
            "TT;>;)",
            "Lo/getPredecessorKey$ICustomTabsCallback<",
            "TT;>;"
        }
    .end annotation

    .line 1705
    new-instance v0, Lo/getPredecessorKey$onPostMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, v1}, Lo/getPredecessorKey$onPostMessage;-><init>(Ljava/lang/String;ZLo/getPredecessorKey$onNavigationEvent;B)V

    return-object v0
.end method

.method private static onNavigationEvent(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5

    if-eqz p0, :cond_5

    .line 735
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 736
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 737
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eqz p1, :cond_0

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_0

    if-eqz v2, :cond_1

    .line 742
    :cond_0
    sget-object v4, Lo/getPredecessorKey$ICustomTabsCallback;->onNavigationEvent:Ljava/util/BitSet;

    .line 743
    invoke-virtual {v4, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2273
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v2, v0

    aput-object p0, v2, v1

    const-string p0, "Invalid character \'%s\' in key name \'%s\'"

    invoke-static {p0, v2}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-object p0

    .line 2142
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "token must have at least 1 tchar"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1910
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "name"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static onPostMessage(Ljava/lang/String;ZLo/getPredecessorKey$onTransact;)Lo/getPredecessorKey$ICustomTabsCallback;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Z",
            "Lo/getPredecessorKey$onTransact<",
            "TT;>;)",
            "Lo/getPredecessorKey$ICustomTabsCallback<",
            "TT;>;"
        }
    .end annotation

    .line 709
    new-instance v0, Lo/getPredecessorKey$ICustomTabsCallback$Stub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lo/getPredecessorKey$ICustomTabsCallback$Stub;-><init>(Ljava/lang/String;ZLo/getPredecessorKey$onTransact;B)V

    return-object v0
.end method


# virtual methods
.method abstract ICustomTabsCallback(Ljava/lang/Object;)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)[B"
        }
    .end annotation
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 791
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 794
    :cond_1
    check-cast p1, Lo/getPredecessorKey$ICustomTabsCallback;

    .line 795
    iget-object v0, p0, Lo/getPredecessorKey$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;

    iget-object p1, p1, Lo/getPredecessorKey$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 800
    iget-object v0, p0, Lo/getPredecessorKey$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method abstract onNavigationEvent([B)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TT;"
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Key{name=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/getPredecessorKey$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
