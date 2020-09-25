.class final Lcom/appsflyer/internal/u$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final ǃ:Z

.field final ɩ:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/appsflyer/internal/u$b;->ɩ:Ljava/lang/String;

    .line 58
    iput-boolean p2, p0, Lcom/appsflyer/internal/u$b;->ǃ:Z

    return-void
.end method


# virtual methods
.method final ɩ()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/appsflyer/internal/u$b;->ǃ:Z

    return v0
.end method
