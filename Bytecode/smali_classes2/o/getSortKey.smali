.class final synthetic Lo/getSortKey;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final onPostMessage:Lo/getTemplateIdentifierName;


# direct methods
.method constructor <init>(Lo/getTemplateIdentifierName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getSortKey;->onPostMessage:Lo/getTemplateIdentifierName;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lo/getSortKey;->onPostMessage:Lo/getTemplateIdentifierName;

    invoke-virtual {v0}, Lo/getTemplateIdentifierName;->extraCallback()V

    return-void
.end method
