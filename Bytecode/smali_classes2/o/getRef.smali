.class public final Lo/getRef;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getRef$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field public final onNavigationEvent:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Lo/getRef$ICustomTabsCallback;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1214
    iget-object v0, p1, Lo/getRef$ICustomTabsCallback;->onNavigationEvent:Ljava/util/List;

    .line 2214
    iget-object p1, p1, Lo/getRef$ICustomTabsCallback;->onNavigationEvent:Ljava/util/List;

    .line 52
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lo/getRef$ICustomTabsCallback;B)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lo/getRef;-><init>(Lo/getRef$ICustomTabsCallback;)V

    return-void
.end method

.method public static onMessageChannelReady([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 149
    array-length v0, p0

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-ltz v0, :cond_1

    .line 150
    aget-object v1, p0, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 151
    aget-object p0, p0, v0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3076
    iget-object v0, p0, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    :goto_0
    if-ge v3, v0, :cond_6

    shl-int/lit8 v5, v3, 0x1

    if-ltz v5, :cond_1

    .line 3082
    iget-object v6, p0, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    array-length v7, v6

    if-lt v5, v7, :cond_0

    goto :goto_1

    .line 3085
    :cond_0
    aget-object v6, v6, v5

    goto :goto_2

    :cond_1
    :goto_1
    move-object v6, v2

    .line 110
    :goto_2
    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez v4, :cond_2

    .line 111
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    if-ltz v5, :cond_4

    .line 3091
    iget-object v6, p0, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    array-length v7, v6

    if-lt v5, v7, :cond_3

    goto :goto_3

    .line 3094
    :cond_3
    aget-object v5, v6, v5

    goto :goto_4

    :cond_4
    :goto_3
    move-object v5, v2

    .line 112
    :goto_4
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    if-eqz v4, :cond_7

    .line 116
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 117
    :cond_7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4076
    iget-object v1, p0, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    shl-int/lit8 v3, v2, 0x1

    const/4 v4, 0x0

    if-ltz v3, :cond_1

    .line 4082
    iget-object v5, p0, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    array-length v6, v5

    if-lt v3, v6, :cond_0

    goto :goto_1

    .line 4085
    :cond_0
    aget-object v5, v5, v3

    goto :goto_2

    :cond_1
    :goto_1
    move-object v5, v4

    .line 129
    :goto_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    if-ltz v3, :cond_3

    .line 4091
    iget-object v5, p0, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    array-length v6, v5

    if-lt v3, v6, :cond_2

    goto :goto_3

    .line 4094
    :cond_2
    aget-object v4, v5, v3

    .line 129
    :cond_3
    :goto_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
