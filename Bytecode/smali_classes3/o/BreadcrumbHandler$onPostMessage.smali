.class final Lo/BreadcrumbHandler$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/BreadcrumbHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onPostMessage"
.end annotation


# instance fields
.field private extraCallback:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .locals 0

    .line 646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 647
    iput-object p1, p0, Lo/BreadcrumbHandler$onPostMessage;->extraCallback:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method final readResolve()Ljava/lang/Object;
    .locals 1

    .line 651
    iget-object v0, p0, Lo/BreadcrumbHandler$onPostMessage;->extraCallback:[Ljava/lang/Object;

    invoke-static {v0}, Lo/BreadcrumbHandler;->onNavigationEvent([Ljava/lang/Object;)Lo/BreadcrumbHandler;

    move-result-object v0

    return-object v0
.end method
