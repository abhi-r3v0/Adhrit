.class public abstract Lo/handles;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/callAPI$onPostMessage;


# instance fields
.field public final asInterface:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lo/handles;->asInterface:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback()Lo/p$a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPostMessage()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lo/handles;->asInterface:Ljava/lang/String;

    return-object v0
.end method
