.class public Lcom/google/firebase/crashlytics/internal/network/HttpResponse;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private body:Ljava/lang/String;

.field private code:I

.field private headers:Lo/shouldIncludeField;


# direct methods
.method constructor <init>(ILjava/lang/String;Lo/shouldIncludeField;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/google/firebase/crashlytics/internal/network/HttpResponse;->code:I

    .line 28
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/network/HttpResponse;->body:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/network/HttpResponse;->headers:Lo/shouldIncludeField;

    return-void
.end method

.method static create(Lo/childAddedChange;)Lcom/google/firebase/crashlytics/internal/network/HttpResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1177
    iget-object v0, p0, Lo/childAddedChange;->onRelationshipValidationResult:Lo/getChildKey;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2177
    :cond_0
    iget-object v0, p0, Lo/childAddedChange;->onRelationshipValidationResult:Lo/getChildKey;

    .line 33
    invoke-virtual {v0}, Lo/getChildKey;->extraCallback()Ljava/lang/String;

    move-result-object v0

    .line 34
    :goto_0
    new-instance v1, Lcom/google/firebase/crashlytics/internal/network/HttpResponse;

    .line 3098
    iget v2, p0, Lo/childAddedChange;->onNavigationEvent:I

    .line 3136
    iget-object p0, p0, Lo/childAddedChange;->asBinder:Lo/shouldIncludeField;

    .line 34
    invoke-direct {v1, v2, v0, p0}, Lcom/google/firebase/crashlytics/internal/network/HttpResponse;-><init>(ILjava/lang/String;Lo/shouldIncludeField;)V

    return-object v1
.end method


# virtual methods
.method public body()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/network/HttpResponse;->body:Ljava/lang/String;

    return-object v0
.end method

.method public code()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/google/firebase/crashlytics/internal/network/HttpResponse;->code:I

    return v0
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/network/HttpResponse;->headers:Lo/shouldIncludeField;

    .line 4063
    iget-object v0, v0, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    invoke-static {v0, p1}, Lo/shouldIncludeField;->onPostMessage([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
